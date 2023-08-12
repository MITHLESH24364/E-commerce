/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package LoginPackage;

import jakarta.servlet.RequestDispatcher;
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
import password.password;


/**
 *
 * @author MITHLESH-SINGH
 */
@WebServlet(name = "signup", urlPatterns = {"/signup"})
public class signup extends HttpServlet {

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
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet signup</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet signup at " + request.getContextPath() + "</h1>");
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
//                String password=request.getParameter("Password");
                String password=p.hash(request.getParameter("Password"));
                String location=request.getParameter("Location");
                String id=request.getParameter("Id");
                 String image=request.getParameter("Image");
                 String age=request.getParameter("Age");
                  String detail=request.getParameter("Detail");
                 try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-commerce", "root", "");
                    Statement stmt=con.createStatement(); 
                     System.out.println("select * from signup where id= "+id +" or email= "+ email +";");
                    ResultSet rs = stmt.executeQuery("select * from signup where id= '"+id +"' or email= '"+ email +"';" );
                    if (rs.next()){
                        PrintWriter out = response.getWriter();
                        out.println("<div class='alert-msg'>This ID or Email is Already Used</div>");
                        System.out.println("ss");
                     RequestDispatcher d = request.getRequestDispatcher("signup.jsp");
                     d.include(request, response);
                 }
                    else{
                    
                    
                    stmt.execute("insert into signup values  ('"+id+"','"+fullname+"','"+email+"','"+number+"','"+username+"','"+password+"','"+location+"','"+detail+"','"+age+"','"+image+"')");
                    response.sendRedirect("login.jsp");
                    }
                    con.close();
                    
                    
                    
                     
                }catch (Exception e) {
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
