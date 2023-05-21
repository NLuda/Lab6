package Servlet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "CountWord", value = "/counter")
public class CountWordServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("jsp/counter.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String filePath = getServletContext().getRealPath("/text/text.txt");
        String s1 = new String(Files.readAllBytes(Paths.get(filePath))).toLowerCase();
        req.setCharacterEncoding("UTF-8");
        String word = req.getParameter("wordForSearch").toLowerCase();

        int index = s1.indexOf(word);
        int countWord = 0;

        while (index >= 0) {
            countWord++;
            index = s1.indexOf(word, index + 1);
        }

        req.setAttribute("count", countWord);
        req.setAttribute("searchWord", word);
        req.getRequestDispatcher("jsp/counter.jsp").forward(req, resp);
    }
}
