package vn.edu.nlu.fit.filter;
import vn.edu.nlu.fit.Utill.Util;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/DoRegisterSL")

public class DoRegisterSL extends HttpServlet {
    TaiKhoanDaoIMP taiKhoanDaoIMP = new TaiKhoanDaoIMP();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        todo(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        todo(request, response);
    }

    private void todo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<String> error = new ArrayList<>();
        String name = Util.getParam(request, "name");
        String email = request.getParameter("email") == null ? "" : request.getParameter("email").trim();
        String pass = request.getParameter("password") == null ? "" : request.getParameter("password").trim();
        String repass = request.getParameter("repassword") == null ? "" : request.getParameter("repassword").trim();
        String gender = request.getParameter("gender") == null ? "" : request.getParameter("gender").trim();
        String fullname = request.getParameter("fullname") == null ? "" : request.getParameter("fullname").trim();
        String phone = request.getParameter("phone") == null ? "" : request.getParameter("phone").trim();
        String birthday = request.getParameter("birthday") == null ? "" : request.getParameter("birthday").trim();
        if (pass.length() < 8) error.add("Mật khẩu phải lớn hơn 8 ký tự");
        if (!pass.equals(repass)) error.add("Mật khẩu nhập lại không khớp");
        Pattern p = Pattern.compile("^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$");
        Matcher m = p.matcher(email);
        if (!m.matches()) error.add("Email không đúng định dạng");
        if (error.size() > 0) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("createacc.jsp").forward(request, response);
        } else {
//            response.sendRedirect("login.jsp");
//            Date id = new Date();
            User1 user = new User1(0, name, email, Mahoa.md5(pass),fullname, 2, 1);
            taiKhoanDaoIMP.themTaiKhoan(user);
            response.sendRedirect("login.jsp");

        }
    }
}
