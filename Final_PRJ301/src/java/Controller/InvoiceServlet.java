package Controller;

import DAO.CartDAO;
import DAO.OrderDAO;
import DAO.StuffDAO;
import DTO.Account;
import DTO.Cart;
import DTO.Order;
import DTO.Stuff;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "InvoiceServlet", urlPatterns = {"/InvoiceServlet"})
public class InvoiceServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        Account user = (Account) session.getAttribute("ACCOUNT");

        try {
            //here
            StuffDAO stuffDao = new StuffDAO();
            boolean resultDecrease = stuffDao.updateStuffQuantityAfterPurchase(user.getUserId());
            if (resultDecrease) {
                List<Stuff> list = stuffDao.getAllStuff();
                session.setAttribute("STUFF_DATA", list);
            }
            
            CartDAO deleteDao = new CartDAO();
            boolean resultDelete = deleteDao.deleteCart(user.getUserId());
            if (resultDelete) {
                List<Cart> list = deleteDao.getCarts(user.getUserId());
                session.setAttribute("CARTS", list);
            }

            String address = request.getParameter("addressInput");
            String phone = request.getParameter("phoneInput");
            String total = request.getParameter("totalInput"); 

            Order order = new Order(0, user.getUserId(), address, phone, Float.parseFloat(total));

            OrderDAO orderdao = new OrderDAO();
            orderdao.insertOrder(order);
            session.setAttribute("RECENT_ORDER", order);
            response.sendRedirect("invoice.jsp");

        } catch (IOException | ClassNotFoundException | NumberFormatException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
//            response.getWriter().println("Order: " + order.toString())
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
