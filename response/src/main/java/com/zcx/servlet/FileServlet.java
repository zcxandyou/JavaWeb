package com.zcx.servlet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;

public class FileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //- 获取下载文件路径
        String realPath = "E:\\Projects\\IdeaProjects\\javaweb\\response\\target\\classes\\idea.properties";
        //- 下载的文件名是什么
        String s = realPath.substring(realPath.lastIndexOf("\\") + 1);
        //- 设置想办法让浏览器能够支持我们需要的东西
        resp.setHeader("Context-Disposition", "attachment; filename" + s);
        //- 获取下载文件的输入流
        FileInputStream in = new FileInputStream(realPath);
        //- 创建缓冲区
        int len = 0;
        byte[] buffer = new byte[1024];
        //- 获取OutputStream对象
        ServletOutputStream out = resp.getOutputStream();
        //- 将FileOutputStreanm流写入到缓冲区 //- 使用OutputStream将缓冲区的数据输入到客户端
        while ((len = in.read(buffer)) > 0) {
            out.write(buffer, 0, len);
        }
        in.close();
        out.close();

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
