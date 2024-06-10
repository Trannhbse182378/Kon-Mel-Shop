package Controller;

import DAO.UserDAO;
import DTO.Account;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ViewUserServlet", urlPatterns = {"/ViewUserServlet"})
public class ViewUserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            UserDAO userDao = new UserDAO();
            List<Account> userList = userDao.getAllUser(); // Lấy tất cả người dùng từ DB
            HttpSession session = request.getSession();
            session.setAttribute("USER_LIST", userList); // Lưu danh sách người dùng vào session
            response.sendRedirect("staffUser.jsp"); // Chuyển hướng đến trang staffUser.jsp
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
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
        return "ViewUserServlet retrieves all user info and dispatches to staffUser.jsp";
    }
}
