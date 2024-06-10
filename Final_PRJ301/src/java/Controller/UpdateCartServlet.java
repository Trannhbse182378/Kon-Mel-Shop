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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */

@WebServlet(name = "UpdateCartServlet", urlPatterns = {"/UpdateCartServlet"})
public class UpdateCartServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        CartDAO cartDAO = new CartDAO();
        Account user = (Account) session.getAttribute("ACCOUNT");

        try {
            List<Cart> carts = cartDAO.getCarts(user.getUserId());
            for (Cart cart : carts) {
                String quantityStr = request.getParameter("quantity_" + cart.getStuffId());
                int quantity = Integer.parseInt(quantityStr);
                if (quantity != cart.getQuantity()) {
                    cart.setQuantity(quantity);
                    cartDAO.setCartQuantity(cart);
                }
            }
            // Reload updated carts
            List<Cart> updatedCarts = cartDAO.getCarts(user.getUserId());
            session.setAttribute("CARTS", updatedCarts);
            response.sendRedirect("cart.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("home.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
