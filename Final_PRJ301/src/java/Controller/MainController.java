/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CartDAO;
import DTO.Account;
import DTO.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
public class MainController extends HttpServlet {

    public final String LOGINSERVLET = "LoginServlet";
    public final String SEARCHSERVLET = "SearchServlet";
    public final String SEARCHSTUFF = "SearchStuff";
    public final String SEARCHUSER = "SearchUser";
    public final String SEARCHORDER = "SearchOrder";
    public final String ADD_STUFF_SERVLET = "AddStuffServlet";
    public final String DELETE_STUFF_SERVLET = "DeleteStuffServlet";
    public final String UPDATE_STUFF_SERVLET = "UpdateStuffServlet";
    public final String LOGOUT_SERVLET = "LogoutServlet";
    public final String LOOKUP_SERVLET = "LookupServlet";
    public final String ADD_TO_CART_SERVLET = "AddToCartServlet";
    public final String REMOVE_TO_CART_SERVLET = "RemoveToCartServlet";
    public final String VIEWSERVLET = "ViewServlet";
    public final String UPDATE_CART_SERVLET = "UpdateCartServlet";
    public final String DELETE_USER_SERVLET = "DeleteUserServlet";

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
        String action = request.getParameter("action");
        String url = "login.jsp";

        try {
            if ("Login".equals(action)) {
                url = LOGINSERVLET;
            } else if ("Logout".equals(action)) {
                url = LOGOUT_SERVLET;
            } else if ("Lookup".equals(action)) {
                url = LOOKUP_SERVLET;
            } else if ("Add To Cart".equals(action)) {
                url = ADD_TO_CART_SERVLET;
            } else if ("Search".equals(action)) {
                String searchQuery = request.getParameter("search");
                request.setAttribute("searchQuery", searchQuery);
                url = SEARCHSERVLET;
            } else if ("searchStuff".equals(action)) {
                String searchQuery = request.getParameter("searchStuff");
                request.setAttribute("searchQuery", searchQuery);
                url = SEARCHSTUFF;
            } else if ("searchUser".equals(action)) {
                String searchQuery = request.getParameter("searchUser");
                request.setAttribute("searchQuery", searchQuery);
                url = SEARCHSTUFF;
            } else if ("AddStuff".equals(action)) {
                url = ADD_STUFF_SERVLET;
            } else if ("Remove To Cart".equals(action)) {
                url = REMOVE_TO_CART_SERVLET;
            } else if ("DeleteStuff".equals(action)) {
                url = DELETE_STUFF_SERVLET;
            } else if ("UpdateStuff".equals(action)) {
                url = UPDATE_STUFF_SERVLET;
            } else if (action == null) {
                url = VIEWSERVLET;
            } else if ("SearchAndRedirect".equals(action)) {
                url = SEARCHSERVLET;
            } else if ("SearchAndRedirectStaff".equals(action)) {
                url = SEARCHSTUFF;
            } else if ("SearchAndRedirectUser".equals(action)) {
                url = SEARCHUSER;
            } else if ("SearchAndRedirectOrder".equals(action)) {
                url = SEARCHORDER;
            } else if ("UpdateCart".equals(action)) {
                url = UPDATE_CART_SERVLET;
            } else if ("ViewUsers".equals(action)) {
                url = "ViewUserServlet";
            } else if ("DeleteUser".equals(action)) {
                url = DELETE_USER_SERVLET;
            } else if ("Order".equals(action)) {
                url = "InvoiceServlet";
            } else if ("ViewOrder".equals(action)) {
                url = "ViewOrderServlet"; 
            }
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }

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
