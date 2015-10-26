package edu.osu.cse5234.business;

import edu.osu.cse5234.business.view.Inventory;
import edu.osu.cse5234.business.view.InventoryService;
import edu.osu.cse5234.business.view.Item;
import edu.osu.cse5234.business.view.TestRemote;
import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.util.ServiceLocator;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Remote;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class Test
 */
@Stateless
@Remote(TestRemote.class)
@LocalBean
public class OrderProcessingServiceBean implements TestRemote {

    /**
     * Default constructor. 
     */
    public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    
    public boolean validateItemAvailability(Order order) {
    	InventoryService inventoryService = ServiceLocator.getInventoryService();
    	Collection col = (Collection) order.getItems();
    	return inventoryService.validateQuantity(col);
    }

    public String processOrder(Order order) {
    	String confirmationCode = "";
    	InventoryService inventoryService = ServiceLocator.getInventoryService();
    	if(inventoryService.updateInventory((Collection) order.getItems())) {
    		// Generate a confirmation code
    		SecureRandom random = new SecureRandom();
    		confirmationCode = new BigInteger(130, random).toString(32);
    	}
    	return confirmationCode;
    }
}
