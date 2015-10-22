package edu.osu.cse5234.model;

import java.io.Serializable;
import java.util.ArrayList;

import edu.osu.cse5234.business.view.Inventory;
import edu.osu.cse5234.business.view.InventoryService;
import edu.osu.cse5234.util.ServiceLocator;

public class Order implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6848111881479954820L;
	/*public ArrayList<String> items ;
	public ArrayList<String> getItems() {
		return items;
	}
	public void setItems(ArrayList<String> items) {
		this.items = items;
	}*/
	public ArrayList<Item> items = new ArrayList<Item>();
	//items.add(new Item("Nikon", 0));

	//items
	public ArrayList<Item> getItems() {
		return items;
	}
	public Order() {
//		items.add(new Item("Nikon",""));
//		items.add(new Item("Go Pro",""));
//		items.add(new Item("Iphone",""));
//		items.add(new Item("Kindle Fire",""));
		
		//super();
	}
	public void setItems(ArrayList<Item> items) {
		this.items = items;
	}
	

}
