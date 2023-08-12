/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Order;

import LoginPackage.LoginModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(name = "myorders", urlPatterns = {"/myorders"})
public class myorders extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
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
        doPost(request,response);
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
        
        HttpSession session = request.getSession();
        System.out.println(session.getAttribute("Id"));
        System.out.println("A");

         String button = request.getParameter("btn");
         
         if(button.equals("add")) {
        String pid = request.getParameter("pid");
                
                 try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce", "root", "");
                    Statement stmt=con.createStatement(); 
                    ResultSet rs=stmt.executeQuery("Select * from products where id="+ pid);
                     System.out.println("Select * from products where id="+ pid);
                   while( rs.next() ) {
                       System.out.println(session.getAttribute("Id"));
                        System.out.println("insert into `order` values  (" +session.getAttribute("Id")+ " ,"+ pid + " )");
                       stmt.execute("insert into `order` values  ("+ session.getAttribute("Id") + " ,"+ pid + ","+ request.getParameter("quantity") + ", now()  )");    
                   }  
                   rs.close();
                   }catch (Exception e) {
                     System.out.println(e);
                 }
                    response.sendRedirect("order_submitted.jsp");

                        
                
//             response.sendRedirect("view_cart.jsp?id="+ids+"&user=1 ");
         } else if (button.equals("buy")) {
             response.sendRedirect("first_checkout.jsp?id=" + request.getParameter("id") + "&"+session.getAttribute("Id"));
         }
         
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
