package com.house.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
public   class   setCharacterEncodingFilter   extends   HttpServlet   implements   Filter  {
   public void doFilter(ServletRequest   request,   ServletResponse   response,   FilterChain   chain)  throws   ServletException,   IOException   { 
	    request.setCharacterEncoding("utf-8"); 
	    response.setContentType("text/html;charset=utf-8"); 
	    chain.doFilter(request,   response); 
   } 

   public void init(FilterConfig   config)   throws   ServletException{ 
   } 
  
   public void destroy(){ 
   }  
}