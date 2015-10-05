package edu.osu.cse5234.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.model.PaymentInfo;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {
	
	@RequestMapping(method = RequestMethod.GET)
    public String purchse(HttpServletRequest request, HttpServletResponse response) throws Exception {  
		request.setAttribute("order", new Order());
		return "OrderEntryForm";
    }
   
    @RequestMapping(path = "/submitItems", method = RequestMethod.POST)
    public String purchseSubItems(@ModelAttribute("order") Order order, HttpServletRequest request ) throws Exception {
         request.getSession().setAttribute("order", order);
        return "redirect:/purchase/paymentEntry";
    }
    
    @RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
    public String viewPaymentEntryPage(HttpServletRequest request, HttpServletResponse response) {
    	request.setAttribute("payment", new PaymentInfo());
    	return "PaymentEntryForm";
    }
    
    @RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
    public String submitPayment() throws Exception {
         return "HelloJSP";
        
    }
    
    @RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
    public String shippingEntry() throws Exception {
         return "HelloJSP";
        
    }	

    @RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
    public String submitShipping() throws Exception {
         return "HelloJSP";
        
    }	

    @RequestMapping(path = "/viewOrder", method = RequestMethod.GET)
    public String viewOrder() throws Exception {
         return "HelloJSP";
        
    }
    
    @RequestMapping(path = "/ConfirmOrder", method = RequestMethod.POST)
    public String confirmOrder() throws Exception {
         return "HelloJSP";
        
    }

}
