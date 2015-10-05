package edu.osu.cse5234.model;

import java.io.Serializable;
import java.util.ArrayList;

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
	public ArrayList<Item> getItems() {
		return items;
	}
	public void setItems(ArrayList<Item> items) {
		this.items = items;
	}
	

}
