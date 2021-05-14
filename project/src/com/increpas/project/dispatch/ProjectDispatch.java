package com.increpas.project.dispatch;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.project.controller.ProjController;


@WebServlet("*.project")
public class ProjectDispatch extends HttpServlet {
   
   // 등록된 결과를 기억할 변수
      public HashMap<String, ProjController> map;
      
      public void init(ServletConfig config) throws ServletException {
         
         Properties prop = new Properties();
         FileInputStream fin = null;
         try {
            String path = this.getClass().getResource("").getPath();
            fin = new FileInputStream(path + "../resources/Proj.properties");
            prop.load(fin);
         } catch(Exception e) {
            e.printStackTrace();
         } finally {
            try {
               fin.close();
            } catch(Exception e) {}
         }
         
         map = new HashMap<String, ProjController>();
         
         Enumeration en = prop.keys();
         while(en.hasMoreElements()) {
            String key = (String) en.nextElement();
            String strClass = prop.getProperty(key);
            
            try {
               Class tmp = Class.forName(strClass);
               Object o = tmp.newInstance();
               map.put(key, (ProjController) o);
            } catch(Exception e) {
               e.printStackTrace();
            }
         }
      }
      
      public void service(HttpServletRequest req, HttpServletResponse resp)
                                    throws ServletException, IOException {
         String full = req.getRequestURI();
         String domain = req.getContextPath();
         String real = full.substring(domain.length());
         ProjController controller = map.get(real);
         
         Boolean bool = false;
         req.setAttribute("isRedirect", bool);
      
         String view = controller.exec(req, resp);
         
         bool = (Boolean) req.getAttribute("isRedirect");
         if(bool == null) {
            PrintWriter pw = resp.getWriter();
            pw.print(view);
         } else if(bool) {
            resp.sendRedirect(view);
         } else {
            // forward 방식 처리
            String prefix = "/WEB-INF/views/proj/";
            String surffix = ".jsp";
            
            RequestDispatcher rd = req.getRequestDispatcher(prefix + view + surffix);
            rd.forward(req, resp);
         }
      }
   }