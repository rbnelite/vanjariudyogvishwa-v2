package com.rbnelite.udyogvishwa.service;

import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.ForgotPasswordDao;

@Service
public class ForgotPasswordServiceImpl implements ForgetPasswordService {

	@Resource
	private ForgotPasswordDao forgotpassworddao;
	
	@Override
	public String getOldPassword(String emailAddress) {
		 
		String to=emailAddress;//change accordingly
		String pass=forgotpassworddao.getOldPassword(emailAddress);
		System.out.println(pass+"qqqqqq");
		String forgotPassMessage="";
		//Get the session object
		  Properties props = new Properties();
		  props.put("mail.smtp.host", "smtp.gmail.com");
		  props.put("mail.smtp.socketFactory.port", "465");
		  props.put("mail.smtp.socketFactory.class",
		        	"javax.net.ssl.SSLSocketFactory");
		  props.put("mail.smtp.auth", "true");
		  props.put("mail.smtp.port", "465");
		 
		  Session session = Session.getDefaultInstance(props,
		   new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		   return new PasswordAuthentication("sawantmanojm@gmail.com","missuMUNNABHAI");//change accordingly
		   }
		  });
		 
		//compose message
		  try {
			  
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress("sawantmanojm@gmail.com"));//change accordingly
		   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		   message.setSubject("Password of Vanjari Udyog Vishwa");
		   message.setText("Your Password is : "+pass);
		   
		   //send message
		   if(pass!=null){
			   Transport.send(message);

		   		System.out.println("message sent successfully");
		   		forgotPassMessage="Please check your mail box. we sent you a mail containing your vanjari udyog vishwa password and please close this window.";
		   		return forgotPassMessage;
			  }else {
				  forgotPassMessage="Please provide valid email id. Press 'Backspace' to try again.";
				  return forgotPassMessage;
			}
		   
		  } catch (MessagingException e) {
			  throw new RuntimeException(e);
			  }
		 
		
	}

}
