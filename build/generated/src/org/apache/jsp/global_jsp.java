package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class global_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Created By CodingNepal - www.codingnepalweb.com -->\n");
 session = request.getSession(false);
    System.out.println( "The session valie in jsp is " + session.getAttribute("username"));
    if(session.getAttribute("username")!= null) {

      out.write("\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <title>Home</title>\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("  <style>\n");
      out.write("    * {\n");
      out.write("      padding: 0;\n");
      out.write("      margin: 0;\n");
      out.write("      text-decoration: none;\n");
      out.write("      /* list-style: none; */\n");
      out.write("      box-sizing: border-box;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    body {\n");
      out.write("      font-family: Poppins;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    nav {\n");
      out.write("      background: #ff8522;\n");
      out.write("      height: 80px;\n");
      out.write("      width: 100%;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    label.logo {\n");
      out.write("      color: white;\n");
      out.write("      font-size: 35px;\n");
      out.write("      line-height: 80px;\n");
      out.write("      padding: 0 100px;\n");
      out.write("      font-weight: bold;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    nav ul {\n");
      out.write("      float: right;\n");
      out.write("      margin-right: 20px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    nav ul li {\n");
      out.write("      display: inline-block;\n");
      out.write("      line-height: 80px;\n");
      out.write("      margin: 0 5px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    nav ul li a {\n");
      out.write("      color: white;\n");
      out.write("      font-weight: 500;\n");
      out.write("      font-size: 17px;\n");
      out.write("      padding: 7px 13px;\n");
      out.write("      /* border-radius: 3px; */\n");
      out.write("      text-transform: uppercase;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    a.active,\n");
      out.write("    a:hover {\n");
      out.write("      /* background: #1b9bff; */\n");
      out.write("      border-bottom: 2px solid white;\n");
      out.write("      transition: .1s;\n");
      out.write("      border-radius: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .checkbtn {\n");
      out.write("      font-size: 30px;\n");
      out.write("      color: white;\n");
      out.write("      float: right;\n");
      out.write("      line-height: 80px;\n");
      out.write("      margin-right: 40px;\n");
      out.write("      cursor: pointer;\n");
      out.write("      display: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    #check {\n");
      out.write("      display: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @media (max-width: 952px) {\n");
      out.write("      label.logo {\n");
      out.write("        font-size: 30px;\n");
      out.write("        padding-left: 50px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      nav ul li a {\n");
      out.write("        font-size: 16px;\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @media (max-width: 858px) {\n");
      out.write("      .checkbtn {\n");
      out.write("        display: block;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      ul {\n");
      out.write("        position: fixed;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 100vh;\n");
      out.write("        background: #e06500;\n");
      out.write("        top: 80px;\n");
      out.write("        left: -100%;\n");
      out.write("        text-align: center;\n");
      out.write("        transition: all .5s;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      nav ul li {\n");
      out.write("        display: block;\n");
      out.write("        margin: 50px 0;\n");
      out.write("        line-height: 30px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      nav ul li a {\n");
      out.write("        font-size: 20px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      a:hover,\n");
      out.write("      a.active {\n");
      out.write("        background: none;\n");
      out.write("        color: white;\n");
      out.write("        font-weight: 600;\n");
      out.write("        border-bottom: 2px solid white;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      #check:checked~ul {\n");
      out.write("        left: 0;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* ************************************ NAV PART ENDS HERE ************************************ */\n");
      out.write("\n");
      out.write("    /* ************************************ NAV2 PART STARTS HERE ************************************ */\n");
      out.write("    .navigation2 {\n");
      out.write("      width: 100%;\n");
      out.write("      display: flex;\n");
      out.write("      flex-direction: row;\n");
      out.write("      justify-content: space-evenly;\n");
      out.write("      background-color: #ffe9d7;\n");
      out.write("      height: 45px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .search {\n");
      out.write("      position: relative;\n");
      out.write("      width: 30%;\n");
      out.write("      /* background-color: aqua; */\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .search input {\n");
      out.write("      float: left;\n");
      out.write("      padding: 6px;\n");
      out.write("      border: none;\n");
      out.write("      margin-top: 4px;\n");
      out.write("      /* margin-right: 16px; */\n");
      out.write("      font-size: 17px;\n");
      out.write("      border: 1px solid lightgray;\n");
      out.write("      width: 360px;\n");
      out.write("      border-radius: 5px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .search i {\n");
      out.write("      position: absolute;\n");
      out.write("      top: 15px;\n");
      out.write("      right: 70px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .cart {\n");
      out.write("      width: 10%;\n");
      out.write("      /* background-color: pink; */\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .offer {\n");
      out.write("      width: 30%;\n");
      out.write("      padding: 10px;\n");
      out.write("      float: right;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .offer p,\n");
      out.write("    .offer div {\n");
      out.write("      display: inline;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .offer p {\n");
      out.write("      background-color: rgb(255, 96, 5);\n");
      out.write("      border-radius: 10px;\n");
      out.write("      color: white;\n");
      out.write("      padding: 10px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .CartBox {\n");
      out.write("      padding: 30px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* ************************************ NAV2 PART ENDS HERE ************************************ */\n");
      out.write("\n");
      out.write("\n");
      out.write("    /* ************************************ SLIDER PART BEGINS HERE ************************************ */\n");
      out.write("    #slideshow {\n");
      out.write("      overflow: hidden;\n");
      out.write("      height: 360px;\n");
      out.write("      width: 1350px;\n");
      out.write("      margin: 0 auto;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .slide-wrapper {\n");
      out.write("      width: 5400px;\n");
      out.write("      -webkit-animation: slide 18s ease infinite;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .slide {\n");
      out.write("      float: left;\n");
      out.write("      height: 360px;\n");
      out.write("      width: 1350px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .slide:nth-child(1) {\n");
      out.write("      background: #D93B65;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .slide:nth-child(2) {\n");
      out.write("      background: #037E8C;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .slide:nth-child(3) {\n");
      out.write("      background: #36BF66;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .slide:nth-child(4) {\n");
      out.write("      background: #D9D055;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .slide-number {\n");
      out.write("      color: #000;\n");
      out.write("      text-align: center;\n");
      out.write("      font-size: 10em;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @-webkit-keyframes slide {\n");
      out.write("      20% {\n");
      out.write("        margin-left: 0px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      30% {\n");
      out.write("        margin-left: -1350px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      50% {\n");
      out.write("        margin-left: -1350px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      60% {\n");
      out.write("        margin-left: -2700px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      70% {\n");
      out.write("        margin-left: -2700px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      80% {\n");
      out.write("        margin-left: -4050px;\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      90% {\n");
      out.write("        margin-left: -4050px;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .spacing {\n");
      out.write("      width: 100%;\n");
      out.write("      background-color: white;\n");
      out.write("      height: 70px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .navigation3 {\n");
      out.write("      width: 100%;\n");
      out.write("      background-color: #ffe9d7;\n");
      out.write("      display: flex;\n");
      out.write("      flex-direction: row;\n");
      out.write("      flex-wrap: nowrap;\n");
      out.write("      justify-content: space-evenly;\n");
      out.write("      padding: 10px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .navigation-item {\n");
      out.write("      padding: 10px;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .navigation-item:hover {\n");
      out.write("      background-color: #ff8522;\n");
      out.write("      color: white;\n");
      out.write("      border-radius: 5px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .Title {\n");
      out.write("      text-align: center;\n");
      out.write("      /* margin: 0 auto; */\n");
      out.write("      margin-bottom: 25px;\n");
      out.write("      color: #363636;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* ************************************ SLIDER PART ENDS HERE ************************************ */\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    .swiper {\n");
      out.write("      width: 950px;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .card {\n");
      out.write("      position: relative;\n");
      out.write("      background: #fff;\n");
      out.write("      border-radius: 20px;\n");
      out.write("      margin: 20px 0;\n");
      out.write("      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("    /* PRODUCTS */\n");
      out.write("    .product {\n");
      out.write("      position: relative;\n");
      out.write("      overflow: hidden;\n");
      out.write("      padding: 20px;\n");
      out.write("      width: 1146px;\n");
      out.write("      /* background-color: green; */\n");
      out.write("      margin: 0 auto;\n");
      out.write("      /* padding: 50px; */\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .product-container {\n");
      out.write("      /* padding: 0 10vw; */\n");
      out.write("      padding: 0px 81px;\n");
      out.write("      display: flex;\n");
      out.write("      overflow-x: auto;\n");
      out.write("      overflow: hidden;\n");
      out.write("      scroll-behavior: smooth;\n");
      out.write("      margin: 0 auto;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("/*    .product-card {\n");
      out.write("      flex: 0 0 auto;\n");
      out.write("      width: 250px;\n");
      out.write("      height: 400px;\n");
      out.write("      margin-right: 30px;\n");
      out.write("      background-color: white;\n");
      out.write("      border-radius: 12px;\n");
      out.write("      box-shadow: 0px 0px 14px #ecebeb;\n");
      out.write("      margin: 20px;\n");
      out.write("    }*/\n");
      out.write("  .product-card {\n");
      out.write("      flex: 0 0 auto;\n");
      out.write("      width: 250px;\n");
      out.write("      height: 400px;\n");
      out.write("      margin-right: 30px;\n");
      out.write("      background-color: white;\n");
      out.write("      border-radius: 12px;\n");
      out.write("      box-shadow: 0px 0px 14px #ecebeb;\n");
      out.write("      display: flex;\n");
      out.write("          padding: 0 0 15px 0;\n");
      out.write("    margin: 20px;\n");
      out.write("    flex-direction: column;\n");
      out.write("    justify-content: space-between;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .product-image {\n");
      out.write("      position: relative;\n");
      out.write("      width: 90%;\n");
      out.write("      margin: 0 auto;\n");
      out.write("      margin-top: 12px;\n");
      out.write("      height: 250px;\n");
      out.write("      overflow: hidden;\n");
      out.write("      border-radius: 12px;\n");
      out.write("      background-color: #ff8b1f;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .product-image img {\n");
      out.write("      border-radius: 12px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .product-title {\n");
      out.write("      font-weight: 600;\n");
      out.write("      margin: 15px;\n");
      out.write("      text-align: center;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .product-price {\n");
      out.write("      width: 70%;\n");
      out.write("      padding: 10px;\n");
      out.write("      background-color: #ff8522;\n");
      out.write("      margin: 0 auto;\n");
      out.write("      border-radius: 10px;\n");
      out.write("      text-align: center;\n");
      out.write("      font-weight: 500;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .pre-btn,\n");
      out.write("    .nxt-btn {\n");
      out.write("      border: none;\n");
      out.write("      width: 5vw;\n");
      out.write("      height: 100%;\n");
      out.write("      position: absolute;\n");
      out.write("      top: 0;\n");
      out.write("      display: flex;\n");
      out.write("      justify-content: center;\n");
      out.write("      align-items: center;\n");
      out.write("      background: none;\n");
      out.write("      z-index: 8;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .pre-btn {\n");
      out.write("      left: 0;\n");
      out.write("      transform: rotate(180deg);\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nxt-btn {\n");
      out.write("      right: 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .pre-btn img,\n");
      out.write("    .nxt-btn img {\n");
      out.write("      opacity: 0.2;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .pre-btn:hover img,\n");
      out.write("    .nxt-btn:hover img {\n");
      out.write("      opacity: 1;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("    .footer {\n");
      out.write("      width: 100%;\n");
      out.write("      background-color: #ff8b1f;\n");
      out.write("      height: 70px;\n");
      out.write("    }\n");
      out.write("      .product-container1 {\n");
      out.write("      margin: 0px 110px;\n");
      out.write("    background-color: #fcfcfc;\n");
      out.write("   \n");
      out.write("    display: flex;\n");
      out.write("    flex-direction: row;\n");
      out.write("    flex-wrap: wrap;\n");
      out.write("    justify-content: center;\n");
      out.write("    align-items: center;\n");
      out.write("    border-radius: 36px;\n");
      out.write("   \n");
      out.write("    padding-top: 20px;\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <nav>\n");
      out.write("    <input type=\"checkbox\" id=\"check\">\n");
      out.write("    <label for=\"check\" class=\"checkbtn\">\n");
      out.write("      <i class=\"fas fa-bars\"></i>\n");
      out.write("    </label>\n");
      out.write("    <label class=\"logo\">MKS Website</label>\n");
      out.write("    <ul>\n");
      out.write("     \n");
      out.write("      <li><a class=\"active\" href=\"clintpage.jsp\">Home</a></li>\n");
      out.write("      <li><a href=\"customer_care.jsp\">Customer Care</a></li>\n");
      out.write("       <li><a href=\"view_cart.jsp\">My Cart</a></li>\n");
      out.write("      <li><a href=\"my_orders.jsp\">Track Product</a></li>\n");
      out.write("      <li><a href=\"profile.jsp\">Profile</a></li>\n");
      out.write(" \n");
      out.write("      <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("   \n");
      out.write("    </ul>\n");
      out.write("  </nav>\n");
      out.write("  <!-- <div class=\"navigation2\">\n");
      out.write("    <div class=\"search\">\n");
      out.write("      <input type=\"text\" placeholder=\"Search\">\n");
      out.write("      <i class=\"fa fa-search\"></i>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"cart\">\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"offer\">\n");
      out.write("\n");
      out.write("      <a href=\"\" class=\"CartBox\">\n");
      out.write("        <div>Cart</div>\n");
      out.write("        <i class=\"fa fa-shopping-cart\"></i>\n");
      out.write("      </a>\n");
      out.write("\n");
      out.write("      <p>Rs. 500 Off on Rs. 5,000</p>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </div> -->\n");
      out.write("\n");
      out.write("  <!-- ************************************** SLIDESHOW SECTION BEGINS HERE ************************************** -->\n");
      out.write("\n");
      out.write("  <div id=\"slideshow\">\n");
      out.write("    <div class=\"slide-wrapper\">\n");
      out.write("      <div class=\"slide\">\n");
      out.write("        <h1 class=\"slide-number\"><img src=\"image/globalslide1.jpg\" width=\"100%\" height=\"100%\" alt=\"\"/></h1>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"slide\">\n");
      out.write("        <h1 class=\"slide-number\"><img src=\"image/globalslide2.jpg\" width=\"100%\" height=\"100%\" alt=\"\"/></h1>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"slide\">\n");
      out.write("        <h1 class=\"slide-number\"><img src=\"image/globalslide3.jpg\" width=\"100%\" height=\"100%\" alt=\"\"/></h1>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"slide\">\n");
      out.write("        <h1 class=\"slide-number\"><img src=\"image/globalslide4.jpg\" width=\"100%\" height=\"100%\" alt=\"\"/></h1>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"slide\">\n");
      out.write("        <h1 class=\"slide-number\"><img src=\"image/slide5.png\" width=\"100%\" height=\"100%\" alt=\"\"/></h1>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- ************************************** SLIDESHOW SECTION ENDS HERE ************************************** -->\n");
      out.write("\n");
      out.write("<!--  <div class=\"spacing\"></div>-->\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("<!--  <div class=\"spacing\"></div>-->\n");
      out.write("\n");
      out.write("  <h1 class=\"Title\">Welcome To Global</h1>\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("  </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("<!--  <div class=\"spacing\"></div>\n");
      out.write("    <h1 class=\"Title\">Just For You</h1>-->\n");
      out.write("  <div class=\"product-container1\">\n");
      out.write("\n");
      out.write("  ");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(
                            "jdbc:mysql://localhost:3306/customer", "root", "");
 //here sonoo is database name, root is username and password  

                    Statement stm = conn.createStatement();
                    ResultSet rsq = stm.executeQuery("select * from global");
                    while (rsq.next()) {
                    
                
      out.write("\n");
      out.write("  <div class=\"product-card\">\n");
      out.write("    \n");
      out.write("            <div class=\"product-image\">\n");
      out.write("                   <a href=\"global_product.jsp?id=");
      out.print(rsq.getInt(1));
      out.write("\">\n");
      out.write("                       <img src=\"image/");
      out.print(rsq.getString("image_location"));
      out.write("\" width=\"100%\" height=\"100%\" ></a>\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("            <div class=\"product-title\">\n");
      out.write("                ");
      out.print(rsq.getString(2));
      out.write("\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("            <div class=\"product-price\">\n");
      out.write("              Rs.  ");
      out.print(rsq.getString(3));
      out.write("\n");
      out.write("            </div>\n");
      out.write("       \n");
      out.write("          </div>\n");
      out.write("  ");

                }
                    conn.close();
                
      out.write("\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <footer class=\"footer\">\n");
      out.write("\n");
      out.write("\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("  <script>\n");
      out.write("    const productContainers = [...document.querySelectorAll('.product-container')];\n");
      out.write("    const nxtBtn = [...document.querySelectorAll('.nxt-btn')];\n");
      out.write("    const preBtn = [...document.querySelectorAll('.pre-btn')];\n");
      out.write("\n");
      out.write("    productContainers.forEach((item, i) => {\n");
      out.write("      let containerDimensions = item.getBoundingClientRect();\n");
      out.write("      let containerWidth = containerDimensions.width;\n");
      out.write("\n");
      out.write("      nxtBtn[i].addEventListener('click', () => {\n");
      out.write("        item.scrollLeft += containerWidth;\n");
      out.write("      })\n");
      out.write("\n");
      out.write("      preBtn[i].addEventListener('click', () => {\n");
      out.write("        item.scrollLeft -= containerWidth;\n");
      out.write("      })\n");
      out.write("    })\n");
      out.write("  </script>\n");
      out.write("  ");
}
else {
response.sendRedirect("http://localhost:8080/JAVA/index.jsp");
}
        
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
