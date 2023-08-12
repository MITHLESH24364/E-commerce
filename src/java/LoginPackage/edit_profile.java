/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package LoginPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import password.password;

/**
 *
 * @author user
 */
@WebServlet(name = "edit_profile", urlPatterns = {"/edit_profile"})
public class edit_profile extends HttpServlet {

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
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet edit_profile</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet edit_profile at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
          String fullname=request.getParameter("Fullname");
          System.out.println(fullname);
                String email=request.getParameter("Email");
                String number=request.getParameter("Number");
                String username=request.getParameter("Username");
                String password=request.getParameter("Password");
                String location=request.getParameter("Location");
                String id=request.getParameter("Id");
                 String detail=request.getParameter("Detail");
                String age=request.getParameter("Age");
                String image=request.getParameter("Image");
                String sql =( " update signup set fullname = ?, email = ?, number = ?, username=?, password = ?, location = ?, id = ?, detail = ?, age = ?, image = ?  where id = " + id);
                 try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce", "root", "");
                    Statement stmt=con.createStatement(); 
                    
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, number);
            ps.setString(4, username);
             ps.setString(5, password);
              ps.setString(6, location);
              ps.setString(7, id);
               ps.setString(8, detail);
                ps.setString(9, age);
                 ps.setString(10, image);
            
            int i = ps.executeUpdate();
            response.sendRedirect("profile.jsp");
            
                    con.close();
    }catch(Exception e){ 
            System.out.println(e);
        } 
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
                password p = new password();
                 String fullname=request.getParameter("Fullname");
                String email=request.getParameter("Email");
                String number=request.getParameter("Number");
                String username=request.getParameter("Username");
//                String password=request.getParameter("Password
                String password=p.hash(request.getParameter("Password"));
                String location=request.getParameter("Location");
                String id=request.getParameter("Id");
                 String image=request.getParameter("Image");
                 String age=request.getParameter("Age");
                  String detail=request.getParameter("Detail");
                String sql =( " update signup set fullname = ?, email = ?, number = ?, username=?, password = ?, location = ?, id = ?,image= ?,age= ?,detail= ?  where id = " + id);
                 try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce", "root", "");
                    Statement stmt=con.createStatement(); 
                    
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, number);
            ps.setString(4, username);
             ps.setString(5, password);
              ps.setString(6, location);
              ps.setString(7, id);
               ps.setString(8, image);
                ps.setString(9, age);
                 ps.setString(10, detail);
            
            int i = ps.executeUpdate();
            response.sendRedirect("profile.jsp");
            
                    con.close();
    }catch(Exception e){ 
            System.out.println(e);
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
