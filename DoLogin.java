package vn.edu.nlu.fit.filter;

//import vn.edu.nlu.fit.DB.DBConnect;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//
//@WebServlet("/DoLogin")
//public class DoLogin extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        try {
//            String name = request.getParameter("uname").trim();
//            String pass = request.getParameter("pass").trim();
//
//            String sql ="SELECT * FROM `user` WHERE username = ? AND `password` = ?";
//            PreparedStatement ps = DBConnect.getPrepareStatement(sql);
//            ps.setString(1,name);
//            ps.setString(2,pass);
//            ResultSet rs = ps.executeQuery();
//            rs.last();
//            if(rs.getRow()==1) {
//                rs.first();
//                if (name.equals(rs.getString("username")) && (pass.equals(rs.getString("password")))) {
//
//                    response.sendRedirect("boighor/index.jsp");
//
//
//
//                } else {
//
//                    request.getRequestDispatcher("boighor/login.jsp").forward(request, response);
//                }
//
//            }
//        }
//        catch (SQLException | ClassNotFoundException e) {
//            e.printStackTrace();
//            request.getRequestDispatcher("boighor/login.jsp").forward(request, response);
//        }
//    }
//
//
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
//    }
//}
//

import vn.edu.nlu.fit.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/DoLogin")
public class DoLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        todo(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        todo(request, response);
    }

    private void todo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        String type = request.getParameter("quyen");

        request.setAttribute("uname",uname);
        String sql = "SELECT * FROM `taikhoan` WHERE name = ? AND `password` = ?  ";
        try {
            PreparedStatement ps = DBConnect.getPrepareStatement(sql);
            ps.setString(1,uname);
            ps.setString(2,Mahoa.md5(pass));
            ResultSet rs = ps.executeQuery();
            rs.last();
            User1 u= new User1();
//            if (rs.getRow()==1 ) {

//                    rs.first();
//                    HttpSession session = request.getSession();
//                    session.setAttribute("uname", uname);
//                    request.getRequestDispatcher("ListProductTrangchu").forward(request, response);

                if (rs.getRow()==1 ) {
                    rs.first();

                    HttpSession session = request.getSession();
                    session.setAttribute("uname", uname);

                        request.getRequestDispatcher("ListProductTrangchu").forward(request, response);

                }
//            }

            else {


                request.setAttribute("err", "Sai Username hoặc mật khẩu");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        } catch ( ClassNotFoundException | SQLException e ) {
            e.printStackTrace();
            request.setAttribute("err", "Sai Username hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }

    }


}
