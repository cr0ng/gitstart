package com.increpas.project.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public interface ProjController {
	String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
	
}