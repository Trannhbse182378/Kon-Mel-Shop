/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UserDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            // Lấy thông tin từ request
            String newEmail = request.getParameter("new_email");
            int newPassword = Integer.parseInt(request.getParameter("new_password")); // Chuyển đổi từ String sang int
            String newName = request.getParameter("new_name");

            // Tạo một đối tượng UserDAO để thực hiện thêm người dùng mới vào cơ sở dữ liệu
            UserDAO userDAO = new UserDAO();

            // Kiểm tra xem email đã tồn tại trong cơ sở dữ liệu chưa
            if (userDAO.isEmailExists(newEmail)) {
                // Nếu email đã tồn tại, chuyển hướng về trang đăng ký và hiển thị thông báo lỗi
                request.setAttribute("registerError", "Email already register account! Fail to register.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }

            // Thực hiện thêm người dùng mới
            boolean isSuccess = userDAO.registerUser(newEmail, newPassword, newName, 0);

            if (isSuccess) {
                // Đặt thuộc tính thông báo thành công vào request
                request.setAttribute("registerSuccess", "Register successfully!");
                // Chuyển hướng đến trang login.jsp
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                // Nếu đăng ký không thành công, cần xử lý lỗi ở đây (nếu cần)
                // Ví dụ: gửi thông báo lỗi trở lại cho người dùng
            }
        } catch (NumberFormatException ex) {
            // Xử lý nếu không thể chuyển đổi password sang kiểu int
            ex.printStackTrace();
        } catch (SQLException ex) {
            // Xử lý lỗi SQL ở đây (nếu cần)
            ex.printStackTrace();
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
