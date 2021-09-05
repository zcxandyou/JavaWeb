package com.zcx.session;

import com.zcx.pojo.Person;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class SessionDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 解决乱码问题
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        // 得到Session
        HttpSession session = req.getSession();
        // 给Session存东西
        session.setAttribute("name",new Person("郑楚轩", 21));
        // 获取session的ID
        String id = session.getId();
        // 判断session是不是新创建
        if (session.isNew()) {
            resp.getWriter().write("session创建成功,id为" + id);
        }else{
            resp.getWriter().write("session已经创建" + id);
        }

        // session创建的时候做了什么
//        Cookie cookie = new Cookie("JSESSIONID", id);
//        resp.addCookie(cookie);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
