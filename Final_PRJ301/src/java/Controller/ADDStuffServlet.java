/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.StuffDAO;
import DTO.Stuff;
import Utils.utilities;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author ptd
 */
@MultipartConfig
public class ADDStuffServlet extends HttpServlet {

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

        String url = "staff.jsp";
        String description = request.getParameter("description");
        String stuffId = request.getParameter("stuffId");
        String price = request.getParameter("price");
        String stuffName = request.getParameter("stuffName");
        String yearOfProduction = request.getParameter("yearOfProduction");
        String quantity = request.getParameter("quantity");
        String notSale = request.getParameter("notSale");
        boolean NotSale = false;

        Part filePart = request.getPart("image"); 
        String fileName = filePart.getSubmittedFileName();

        InputStream fileContent = filePart.getInputStream(); 

        HttpSession session = request.getSession();
        StuffDAO dao = new StuffDAO();

        try {

            boolean isQuantityPositive = utilities.isPositive(quantity);
            boolean isYearOfProductionPositive = utilities.isPositive(yearOfProduction);
            boolean isPriceVaid = utilities.isPositiveNumber(price);

            if (!isQuantityPositive || !isYearOfProductionPositive) {
                request.setAttribute("POSITIVE_NUMBER_ERROR", "quantity or year of production are negative digits, please change to positive");
            } else if (!isPriceVaid) {
                request.setAttribute("POSITIVE_PRICE", "price should be positive");
            } else {
                if ("on".equals(notSale)) {
                    NotSale = true;
                }
                Stuff stuff = new Stuff(stuffId, description, Float.parseFloat(price), stuffName, Integer.parseInt(yearOfProduction), Integer.parseInt(quantity), NotSale, fileName);
                boolean result = dao.addStuff(stuff);
                if (result) {

                    String uploadPath = getServletContext().getRealPath("") + "asset" + File.separator + "image";
                    
   
                    String tmp = uploadPath.replace("\\build", ""); 


                    File uploadDir = new File(tmp);
                    if (!uploadDir.exists()) {
                        uploadDir.mkdirs();// OS
                    }

                    File uploadBuildDir = new File(uploadPath);
                    if (!uploadBuildDir.exists()) {
                        uploadBuildDir.mkdirs();
                    }


                    String savePath = tmp + File.separator + fileName;                     
                    // Construct the path to save the file
                    String saveBuildPath = uploadPath + File.separator + fileName;

                    try (OutputStream out = new FileOutputStream(new File(savePath))) {
                        //daposjdpisajdp91ue21ieu219re29e2-e21ihe2je21 return -1 -> input stream is a buffer contains many byte ( <= 1MB )
                        byte[] buffer = new byte[1024]; // 1MB 
                        int bytesRead;      //inputstream
                        while ((bytesRead = fileContent.read(buffer)) != -1) {
                            out.write(buffer, 0, bytesRead);
                        }
                    } catch (Exception e) {
                        e.printStackTrace(); // Handle the exception appropriately
                    }
                    
                    
                    try (OutputStream out = new FileOutputStream(new File(saveBuildPath))) {
                        byte[] buffer = new byte[1024];
                        int bytesRead;
                        while ((bytesRead = fileContent.read(buffer)) != -1) {
                            out.write(buffer, 0, bytesRead);
                        }
                    } catch (Exception e) {
                        e.printStackTrace(); // Handle the exception appropriately
                    }
                    List<Stuff> list = dao.getAllStuff();
                    session.setAttribute("STUFF_DATA", list);
                }
            }
        } catch (SQLException ex) {
            log("ADDStuffServlet + SQLEXCEPTOPN: " + ex.getMessage());
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
