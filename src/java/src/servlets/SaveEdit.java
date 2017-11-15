/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import src.classes.Customers;
import src.classes.CustomersDB;

/**
 *
 * @author jrmromao
 */
@WebServlet(name = "SaveEdit", urlPatterns = {"/SaveEdit"})
public class SaveEdit extends HttpServlet {

 
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        String address;
        
        try {

            Customers c = new Customers();

           c.setCustomerNumber(Integer.parseInt(request.getParameter("customerNumber")));
            c.setCustomerName(request.getParameter("customerName"));
            c.setContactFirstName(request.getParameter("contactFirstName"));
            c.setContactLastName(request.getParameter("contactLastName"));
            c.setPhone(request.getParameter("phone"));
            c.setEmail(request.getParameter("email")); 
                    
            CustomersDB.updateCustomer(c);
            
                           address = "ShowAllCustomers";
  
            
            
        } catch(Exception e){
            address = "Error.jsp";
        }  
        RequestDispatcher dispatcher = request.getRequestDispatcher(address);
            dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
