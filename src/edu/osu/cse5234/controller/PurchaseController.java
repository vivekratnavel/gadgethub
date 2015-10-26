package edu.osu.cse5234.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.osu.cse5234.business.OrderProcessingServiceBean;
import edu.osu.cse5234.business.view.*;
import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.model.PaymentInfo;
import edu.osu.cse5234.model.ShippingInfo;
import edu.osu.cse5234.util.ServiceLocator;
import org.apache.log4j.*;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {
	
	private Logger log = Logger.getLogger(this.getClass().getName());
	
	@RequestMapping(method = RequestMethod.GET)
    public String purchse(HttpServletRequest request, HttpServletResponse response) throws Exception {  
		request.setAttribute("order", new Order());
		InventoryService inventoryService = ServiceLocator.getInventoryService();
		Inventory inventory = inventoryService.getAvailableInventory();
		request.setAttribute("inventory", inventory);
		ArrayList<Item> items  = inventory.getItems();
		log.setLevel(Level.INFO);
		PrintWriter writer = new PrintWriter("log.txt", "UTF-8");
		writer.println("The first line");
		writer.println("The second line");
		writer.close();
		for(Item item : items) {
			//System.out.println(item.getName());
			log.info(item.getName());
			writer.println(item.getName());
		}
		writer.println("Redirecting..");
		log.info("Redirecting..");
		return "Order";
    }
   
    @RequestMapping(path = "/submitItems", method = RequestMethod.POST)
    public String purchseSubItems(@ModelAttribute("order") Order order, HttpServletRequest request ) throws Exception {
         request.getSession().setAttribute("order", order);
         OrderProcessingServiceBean orderProcessingServiceBean = ServiceLocator.getOrderProcessingService();
         log.info("Redirecting..");
         if(orderProcessingServiceBean.validateItemAvailability(order)) {
        	 return "redirect:/purchase/paymentEntry";
         } else {
        	 return "redirect:/purchase";
         }
    }
    
    @RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
    public String viewPaymentEntryPage(HttpServletRequest request, HttpServletResponse response) throws Exception{
    	request.setAttribute("payment", new PaymentInfo());
    	log.info("Redirecting..");
    	return "PaymentEntryForm";
    }
    
    @RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
    public String submitPayment() throws Exception {
         return "redirect:/purchase/shippingEntry";        
    }
    
    @RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
    public String shippingEntry(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	request.setAttribute("shipping", new ShippingInfo());
         return "shippingEntryForm";
        
    }	

    @RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
    public String submitShipping() throws Exception {
         return "redirect:/purchase/viewOrder";
        
    }	

    @RequestMapping(path = "/viewOrder", method = RequestMethod.GET)
    public String viewOrder() throws Exception {
         return "ViewOrder";
    }
    
    @RequestMapping(path = "/ConfirmOrder", method = RequestMethod.POST)
    public String confirmOrder(HttpServletRequest request) throws Exception {
    	OrderProcessingServiceBean orderProcessingServiceBean = ServiceLocator.getOrderProcessingService();
    	Order order = (Order) request.getSession().getAttribute("order");
    	String confirmationCode = orderProcessingServiceBean.processOrder(order);
		request.getSession().setAttribute("confirmationCode", confirmationCode);
        return "ConfirmOrder";
    }

}
