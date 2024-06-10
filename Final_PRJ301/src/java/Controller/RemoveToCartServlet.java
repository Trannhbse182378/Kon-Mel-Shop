package Controller;

import DAO.CartDAO;
import DTO.Account;
import DTO.Cart;
import java.io.IOException;
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

@WebServlet(name = "RemoveToCartServlet", urlPatterns = {"/RemoveToCartServlet"})
public class RemoveToCartServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "cart.jsp";
        String cartId = request.getParameter("cartId"); // Sử dụng stuffId để xác định sản phẩm
        String userId = request.getParameter("userId");
        String stuffId = request.getParameter("stuffId");

        HttpSession session = request.getSession();
        CartDAO cartDAO = new CartDAO();
        Account user = (Account) session.getAttribute("ACCOUNT");

        try {
            // Không cần phải lấy cart theo ID nữa, vì không sử dụng cartId
            // Thay vào đó, xóa trực tiếp mục dựa trên userId và stuffId
            boolean removeResult = cartDAO.removeItemToCart(user.getUserId(), stuffId);

            if (removeResult) {
                // Cập nhật lại danh sách giỏ hàng sau khi xóa
                List<Cart> list = cartDAO.getCarts(user.getUserId());
                session.setAttribute("CARTS", list);
            }

        } catch (SQLException ex) {
            Logger.getLogger(RemoveToCartServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
