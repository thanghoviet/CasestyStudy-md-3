package controler;

import dao.AccountDAO;
import model.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AccountServlet", value = "/account")
public class AccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    AccountDAO accountDAO = new AccountDAO();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertAccount(request, response);
                    break;
                case "edit":
                    updateAccount(request, response);
                    break;
                case  "login":
                    loginAccount(request,response);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteAccount(request, response);
                    break;
                case  "listUser":
                    listUser(request,response);
                    break;
                case  "login":
                    loginFrom(request,response);
                    break;
                default:
                    listAccount(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void loginFrom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("loginAccount.jsp");
        dispatcher.forward(request, response);
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Account> accounts = accountDAO.selectAllAccount();
        request.setAttribute("accountList", accounts);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listAccount.jsp");
        dispatcher.forward(request, response);
    }

    public  void loginAccount(HttpServletRequest request, HttpServletResponse response){
        String use_name = request.getParameter("use_name");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        try {
            Account account = accountDAO.findUserPass(use_name, password);
            if (accountDAO.checkUser(use_name, password)) {
                if (use_name.equals("admin")) {
                    session.setAttribute("a_userName", account.getUse_name());
                    session.setAttribute("account", account);
                    response.sendRedirect("/account?action=listUser");
                } else {
                    session.setAttribute("a_userName", account.getUse_name());
                    session.setAttribute("account", account);
                    response.sendRedirect("/note");
                }
            } else {
                request.setAttribute("message", "User, password please try again");
                RequestDispatcher dispatcher = request.getRequestDispatcher("listAccount.jsp");
                dispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void listAccount(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Account> accountList = accountDAO.selectAllAccount();
        request.setAttribute("accountList", accountList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listAccount.jsp");
        dispatcher.forward(request, response);
    }

    public void deleteAccount(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        accountDAO.deleteAccountById(id);
        List<Account> accountList = accountDAO.selectAllAccount();
        request.setAttribute("accountList", accountList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("listAccount.jsp");
        dispatcher.forward(request, response);
    }


    public void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Account account = accountDAO.getAccountById(id);
        List<Account> accountList = accountDAO.selectAllAccount();
        RequestDispatcher dispatcher = request.getRequestDispatcher("editAccount.jsp");

        request.setAttribute("account", account);
        request.setAttribute("accountList", accountList);
        dispatcher.forward(request, response);
    }

    public void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("addAccount.jsp");
        dispatcher.forward(request, response);
    }

    public void insertAccount(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String name = request.getParameter("name");
        String use_name = request.getParameter("use_name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");

        Account account = new Account(name, use_name,password,email,phoneNumber,address);
        accountDAO.addTheNewAccount(account);

        List<Account> accountList = accountDAO.selectAllAccount();
        request.setAttribute("accountList", accountList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("addAccount.jsp");
        dispatcher.forward(request, response);
    }

    public void updateAccount(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String use_name = request.getParameter("use_name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");

        Account account = new Account(name, use_name,password,email,phoneNumber,address);
        accountDAO.editAccountById(account);
        RequestDispatcher dispatcher = request.getRequestDispatcher("editAccount.jsp");
        dispatcher.forward(request, response);
    }
}
