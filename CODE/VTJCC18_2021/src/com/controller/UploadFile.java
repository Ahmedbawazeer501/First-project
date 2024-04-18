package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.database.DatabaseImplementation;

@WebServlet("/uploadfile")
@MultipartConfig(
		  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)
public class UploadFile extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Part filepart1=req.getPart("file");
		HttpSession ses=req.getSession(false);
    	String uid=(String)ses.getAttribute("uid");
    	InputStream inputStream, input;
		FileOutputStream filePart;
		String userid=req.getParameter("userid");
		String fileName1=req.getParameter("fileName");
		
		
		if(filepart1==null){
			System.out.println("filepart is null");
		}else{
			System.out.println("file part is not null");
		}
	//
		String file=filepart1.getName();
		String filePath= "D:\\workspace\\Bawazeerprojects\\VTJCC18_2021\\WebContent";
		System.out.println("fileee"+filePath);
		
		inputStream= filepart1.getInputStream();
		
		  int i=0;    
          while((i=inputStream.read())!=-1){    
           System.out.print((char)i);    
          }    
          inputStream.close(); 
		
          String fileName = filepart1.getName();
          for (Part part : req.getParts()) {
            part.write(filePath+"\\files\\" + fileName1+".txt");
          }
        DatabaseImplementation di=new DatabaseImplementation();
        String s=di.uploadFile(Integer.parseInt(userid), fileName1);
        if(s.equalsIgnoreCase("success")){
        	req.setAttribute("message", "File uploaded successfully");
		req.getRequestDispatcher("upload.jsp").include(req, resp);
        
         // resp.getWriter().print("The file uploaded sucessfully.");
        }
        else{
        	req.setAttribute("message", "Failed to  Upload the File?");
    		req.getRequestDispatcher("upload.jsp").include(req, resp);
        	resp.getWriter().print("The file upload failed");
        }
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
