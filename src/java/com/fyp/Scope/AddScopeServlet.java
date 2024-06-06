package com.fyp.Scope;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import com.fyp.model.bean.Scope;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addScope")
public class AddScopeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AddScopeDAO addScopeDAO;

    public void init() {
        addScopeDAO = new AddScopeDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        if (action.equals("/addScopeForm")) {
            showNewForm(request, response);
        } else {
            listScope(request, response);
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/Add-New-Scope-Admin.jsp");
        dispatcher.forward(request, response);
    }

    private void listScope(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Scope> scopeList = null;
        try {
            scopeList = addScopeDAO.getAllScopes();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("scopeList", scopeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/ScopeList.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int scopeId = Integer.parseInt(request.getParameter("scopeId"));
        int adminId = Integer.parseInt(request.getParameter("adminId"));
        int lId = Integer.parseInt(request.getParameter("lId"));
        String scopeName = request.getParameter("scopeName");
        String program = request.getParameter("program");
        String session = request.getParameter("session");

        Scope newScope = new Scope(scopeId, 0, 0 , scopeName, program, session);

        try {
            addScopeDAO.insertScope(newScope);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("list");
    }
}
