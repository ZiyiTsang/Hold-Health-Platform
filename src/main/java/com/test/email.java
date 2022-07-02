package com.test;


import jakarta.servlet.http.HttpSession;

import java.util.Date;
import java.util.List;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class email {
    public static final String MY_EMAIL_ACCOUNT = "13712685569@163.com";
    public static final String MY_EMAIL_PASSWORD = "AOTSZKAYMJAYRMTE";// 密码,是你自己的设置的授权码

    public static final String MEAIL_163_SMTP_HOST = "smtp.163.com";
    public static final String SMTP_163_PORT = "25";


    //public static final String RECEIVE_EMAIL_ACCOUNT = userEmail;

    public static void sendEmail(String userEmail, int code, boolean id, List address) throws MessagingException {
        Properties p = new Properties();
        System.setProperty("java.net.preferIPv4Stack", "true");
        p.setProperty("mail.smtp.host", MEAIL_163_SMTP_HOST);
        p.setProperty("mail.smtp.port", SMTP_163_PORT);
        p.setProperty("mail.smtp.socketFactory.port", SMTP_163_PORT);
        p.setProperty("mail.smtp.auth", "true");
        p.setProperty("mail.smtp.socketFactory.class", "SSL_FACTORY");

        Session session = Session.getInstance(p, new Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MY_EMAIL_ACCOUNT, MY_EMAIL_PASSWORD);
            }
        });
        session.setDebug(true);
        System.out.println("mail is created");
        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(MY_EMAIL_ACCOUNT));

        message.setRecipients(Message.RecipientType.TO,userEmail);
//		message.setRecipients(Message.RecipientType.CC, MY_EMAIL_ACCOUNT);

        // 内容
        if(id){
            message.setSubject("Validation Code(HEALTH)");
            message.setContent("<h4>Welcome to register HEALTH !</h4>" +
                    "<p>Copy the code here to start your journey with us!</p>"+"<p>You validation code is </p>"+code, "text/html;charset=UTF-8");
        }else{


            message.setSubject("HEALTH：have new order");
            //message.setContent("<p></p>");
            StringBuilder content = new StringBuilder("<html><head></head><body><h2>new order!</h2>");
            content.append("<table style=\"font-size=14px;;font-size:18px;\">");

            content.append("<tr>");
            content.append("<td>user id</td>"); //第一列
            content.append("<td>user email  </td>"); //第二列
            content.append("<td>user name</td>"); //第三列
            content.append("</tr>");
            //写这里
            content.append("<tr>");
            content.append("<td>user id</td>"); //第一列
            content.append("<td>user email  </td>"); //第二列
            content.append("<td>user name</td>"); //第三列
            content.append("</tr>");
            content.append("</table>");

            content.append("<table border=\"5\" style=\"font-size=14px;;font-size:18px;\">");
            content.append("<h4>order</h4>");
            content.append("<tr>");
            content.append("<td >product name</td>"); //第一列
            content.append("<td>number</td>"); //第二列
            content.append("<td>price</td>"); //第三列
            content.append("</tr>");

            content.append("<tr>");
            content.append("<td >product name</td>"); //第一列
            content.append("<td>number</td>"); //第二列
            content.append("<td>price</td>"); //第三列
            content.append("</tr>");


            content.append("</table>");
            content.append("<h3>total price is</h3>");
            content.append("<h3>The address is:</h3>");
            content.append("<h3>"+address.get(0)+", "+address.get(1)+", "+address.get(2)+", "+address.get(3)+"</h3>");
            content.append("</body></html>");

            message.setContent(content.toString(),"text/html;charset=utf-8");
            System.out.println("at here");
        }

        message.setSentDate(new Date());
        message.saveChanges();
        System.out.println("准备发送");
        Transport.send(message);
    }
}



