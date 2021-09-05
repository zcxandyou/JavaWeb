package com.zcx.session;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;

// 中文数据传输
public class CookieDemo3 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //         服务器把你来的时间封装成一个信件，下次带来，就知道是你来了
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        resp.setContentType("html/text");
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
                if (cookie.getName().equals("name")) {
                    System.out.println(cookie.getValue());
                    out.write(URLDecoder.decode(cookie.getValue(), "utf-8"));
                }
            }

        }else{
            out.write("这是你第一次访问本站");
        }

        Cookie cookie = new Cookie("name", URLEncoder.encode("郑楚轩", "utf-8"));
        resp.addCookie(cookie);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
