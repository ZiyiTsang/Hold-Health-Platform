package com.test;


import java.util.Date;
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

    public static void sendEmail(String userEmail, int code, boolean id) throws AddressException, MessagingException {
        Properties p = new Properties();
        //String RECEIVE_EMAIL_ACCOUNT = userEmail;
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
        System.out.println("创建邮件");
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
            //message.setContent("<h2>Welcome to register HEALTH !</h2>");
        }

        message.setSentDate(new Date());
        message.saveChanges();
        System.out.println("准备发送");
        Transport.send(message);
    }
}

            /*
            *Properties properties = System.getProperties();
            properties .put("mail.smtp.starttls.enable", "true");
            properties .put("mail.smtp.starttls.required", "true");
            properties.setProperty("mail.smtp.ssl.enable","false");
            properties.setProperty("mail.smtp.host", "smtp.163.com");//smtp协议地址
            properties.setProperty("mail.smtp.port", "25");//端口号587
            properties.setProperty("mail.smtp.auth", "true");//
            *    props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.setProperty("mail.smtp.socketFactory.fallback", "false");
                * properties.setProperty("mail.smtp.socketFactory.port", "587");//设置ssl端口
            properties.setProperty("mail.smtp.socketFactory.fallback", "false");
            properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
             */

