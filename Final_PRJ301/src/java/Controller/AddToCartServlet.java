package Controller;

import DAO.CartDAO;
import DAO.StuffDAO;
import DTO.Cart;
import DTO.Stuff;
import DTO.Account;
import Utils.utilities;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AddToCartServlet", urlPatterns = {"/AddToCartServlet"})
public class AddToCartServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "cart.jsp";
        String stuffId = request.getParameter("stuffId");
        String quantity = request.getParameter("quantity").isEmpty() ? "1" : request.getParameter("quantity");

        HttpSession session = request.getSession();
        CartDAO cartDAO = new CartDAO();
        Account user = (Account) session.getAttribute("ACCOUNT");
        try {
            boolean isQuantityPositive = utilities.isPositive(quantity);

            if (!isQuantityPositive) {
                request.setAttribute("POSITIVE_QUANTITY_ERROR", "Quantity must be positive");
            } else {
                Cart existCart = cartDAO.getCart(user.getUserId(), stuffId);
                if (existCart == null) {
                    boolean isQuantityValid = checkQuantity(stuffId, Integer.parseInt(quantity));
                    if (isQuantityValid) {
                        StuffDAO stuffDAO = new StuffDAO();
                        Stuff stuff = stuffDAO.getStuffById(stuffId);
                        Cart cart = new Cart(0, user.getUserId(), stuffId, stuff.getImage(), stuff.getStuffName(), stuff.getPrice(), Integer.parseInt(quantity));
                        boolean result = cartDAO.insertCart(cart);
                        if (result) {
                            List<Cart> list = cartDAO.getCarts(user.getUserId());
                            session.setAttribute("CARTS", list);
                        }
                    } else {
                        request.setAttribute("QUANTITY_ERROR", "The quantity of stuff you can add is not enough.");
                        url = "search.jsp";
                    }
                } else {
                    boolean isQuantityValid = checkQuantity(stuffId, Integer.parseInt(quantity));
                    if (isQuantityValid) {
                        existCart.setQuantity(existCart.getQuantity() + Integer.parseInt(quantity));
                        boolean result = cartDAO.setCartQuantity(existCart);
                        if (result) {
                            List<Cart> list = cartDAO.getCarts(user.getUserId());
                            session.setAttribute("CARTS", list);
                        }
                    } else {
                        request.setAttribute("QUANTITY_ERROR", "The quantity of stuff you can add is not enough.");
                        url = "search.jsp";
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AddToCartServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Redirect to the cart page
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    private boolean checkQuantity(String stuffId, int quantity) throws SQLException {
        StuffDAO stuffDAO = new StuffDAO();
        Stuff m = stuffDAO.getStuffById(stuffId);
        if (m != null) {
//            if (m.getQuantity() >= quantity) {
//                m.setQuantity(m.getQuantity() - quantity);
//                boolean rs = stuffDAO.updateStuff(m);
//                if (rs) {
//                    return true;
//                }
//            } else {
//                return false;
//            }
            return m.getQuantity() >= quantity;
        }
        return false;
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
