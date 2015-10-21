package edu.osu.cse5234.business;

import edu.osu.cse5234.business.view.TestRemote;
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

}
