package com.zcx.session;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

// 保存用户上一次访问的时间
public class CookieDemo1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//         服务器把你来的时间封装成一个信件，下次带来，就知道是你来了
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        PrintWriter out = resp.getWriter();

        // cookie 服务器从客户端获取
        // 返回多个cookie，说明cookie可能存在多个
        Cookie[] cookies = req.getCookies();
        // 判断cookie是否存在
        if (cookies != null){
            // 存在
            out.write("上一次访问的时间是：");
            for (Cookie cookie : cookies
                 ) {
                if (cookie.getName().equals("lastLoginTime")) {
                    // 获取cookie中的值
                    long l = Long.parseLong(cookie.getValue());
                    Date date = new Date(l);
                    out.write(date.toLocaleString());
                }
            }

        }else{
            out.write("这是你第一次访问本站");
        }

        // 服务器给客户端响应一个cookie
        Cookie cookie = new Cookie("lastLoginTime", System.currentTimeMillis() + "");
        resp.addCookie(cookie);
        cookie.setMaxAge(24 * 60 * 60);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
