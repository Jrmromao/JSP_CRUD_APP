/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.classes;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.swing.JOptionPane;
import javax.swing.text.html.HTML;

/**
 *
 * @author jrmromao
 */
public class CustomersDB {

    public static List<Customers> getAllCustomerses() {

        //get em
        EntityManager em = DBUtil.getEmf().createEntityManager();
        //create type query, use a named query that was generetade when we create a entity class 
        TypedQuery<Customers> tq = em.createNamedQuery("Customers.findAll", Customers.class);

        List<Customers> custList = tq.getResultList();

        //do not forget to close the entity manager
        /**/
        em.close();/**/
        ///////////////////


        // return the list
        return custList;
    }//end getAllCustomer

    public static Customers getCustomerByID(int id) {

        EntityManager em = DBUtil.getEmf().createEntityManager();

        Customers c = em.find(Customers.class, id);

        return c;

    }//end getCustomerByID

    //   @NamedQuery(name = "Customers.SaveCustomerEdit", query = ""),
    public static void updateCustomer(Customers c) {

        EntityManager em = null;

        try {

            em = DBUtil.getEmf().createEntityManager();
            EntityTransaction t = em.getTransaction();
            t.begin();
            em.merge(c); //a diference para o method the adicionar dovo autor
            t.commit();

        } catch (Exception e) {
            JOptionPane.showConfirmDialog(null, e.toString());

        } finally {
            em.close();
        }

    }// end updateAuthor

    
        
    public static boolean deleteCustomer(Customers c) {

        EntityManager em = null;

        try {

            
            em = DBUtil.getEmf().createEntityManager();
            EntityTransaction t = em.getTransaction();
//            Customers c = em.find(Customers.class, id);
          t.begin();
            em.remove(em.merge(c)); //delete object
            t.commit();
            
            return true;
        } catch (Exception e) {
              JOptionPane.showConfirmDialog(null, e.toString());
            //  trabs.rollback();
            return false;
        } finally {
            em.close();
        }

    }// end updateAuthor

    
    
    
    
    public static boolean addCustomer(Customers c) {
        EntityManager em = null;

        try {

            em = DBUtil.getEmf().createEntityManager();
            EntityTransaction t = em.getTransaction();
            t.begin();
            em.persist(c);
            t.commit();

            return true;
            
        } catch (Exception e) {
           JOptionPane.showConfirmDialog(null, e.toString());
            //  trabs.rollback();
        
        return false;
        } finally {
            em.close();
        }

    }//end addCustomer

    
    
    
    
    
    
}
