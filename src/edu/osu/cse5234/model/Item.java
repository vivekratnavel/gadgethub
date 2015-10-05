package edu.osu.cse5234.model;

import java.io.Serializable;

public class Item implements Serializable {

		/**
	 * s
	 */
	private static final long serialVersionUID = 1L;
		public String name;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		
		
		public Item() {
			super();
		}
		public Item(String name, String quantity) {
			super();
			this.name = name;
			this.quantity = quantity;
		}
		public String getQuantity() {
			return quantity;
		}
		public void setQuantity(String quantity) {
			this.quantity = quantity;
		}
		public String quantity;
}
