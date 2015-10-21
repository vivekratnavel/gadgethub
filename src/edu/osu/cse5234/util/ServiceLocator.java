package edu.osu.cse5234.util;

import javax.naming.InitialContext;
import javax.naming.NamingException;

import edu.osu.cse5234.business.OrderProcessingServiceBean;

public class ServiceLocator {

	public static OrderProcessingServiceBean getOrderProcessingService() {
		try {
	         return (OrderProcessingServiceBean) InitialContext.doLookup(
					"java:module/OrderProcessingServiceBean!edu.osu.cse5234.business.OrderProcessingServiceBean");
		} catch (NamingException ne) {
				throw new RuntimeException(ne);
	}

	}
}
