package com.increpas.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ProjController {
	String exec(HttpServletRequest req, HttpServletResponse resp);
}