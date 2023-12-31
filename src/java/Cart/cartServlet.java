/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Cart;

import LoginPackage.LoginModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author user
 */
@WebServlet(name = "cartServlet", urlPatterns = {"/cartServlet"})
public class cartServlet extends HttpServlet {

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
        String ids = request.getParameter("id").toString();
        System.out.println("the servlet is working" + ids);
        CartModel model = new CartModel(ids);
        request.setAttribute("ids", ids);
//        response.sendRedirect("first_product.jsp");
        request.getRequestDispatcher("first_product.jsp").forward(request, response);
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
        HttpSession session = request.getSession(false);
        System.out.println(session.getAttribute("Id") + " aAa");
        processRequest(request, response);
        LoginModel model = new LoginModel();
        System.out.println("This include the user name: ");
        
         
         String ids =request.getParameter("id");
         String user = request.getParameter("user");
         System.out.println(ids + "This is the id");
         
         String button = request.getParameter("btn");
         System.out.println(button);
         
         if(button.equals("add")) {
             System.out.println(session.getAttribute("Id"));
             System.out.println("AA");
        String pid = request.getParameter("id");
                System.out.println(" " + session.getAttribute("Id") + " " + pid + " ");
                
                 try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce", "root", "");
                    Statement stmt=con.createStatement(); 
                    ResultSet rs=stmt.executeQuery("Select * from products where id="+ pid);
                   while( rs.next() ) {
                       System.out.println("The rs is: " +  rs);
                       stmt.execute("insert into my_cart values  ("+ session.getAttribute("Id") + " ,"+ pid + ","+ request.getParameter("quantity") + " )");                    
                       System.out.println("insert into my_cart values  ("+ session.getAttribute("Id") + " ,"+ pid + ","+ request.getParameter("quantity") + " )");
                       response.sendRedirect("view_cart.jsp");
                   }  
                        
                }catch (Exception e) {
                     System.out.println(e);
                 }
//             response.sendRedirect("view_cart.jsp?id="+ids+"&user=1 ");
         } else if (button.equals("buy")) {
             response.sendRedirect("first_checkout.jsp?id=" + ids + "&"+"quantity="+request.getParameter("quantity"));
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
