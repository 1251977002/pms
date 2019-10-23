package util;

import cons.EmailCons;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.SimpleEmail;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class EmailUtil {
    private static String HOST_NAME;
    private static String USERNAME;
    private static String PASSWORD;
    private static String CHAR_SET;
    private static String FROM_EMAIL;

    static {
        try {
            Properties properties = new Properties();
            //读取配置文件
            InputStream inputStream = EmailUtil.class.getClassLoader().getResourceAsStream("email.properties");
            //读取输入流
            properties.load(inputStream);
            HOST_NAME = properties.getProperty(EmailCons.HOST_NAME);
            USERNAME = properties.getProperty(EmailCons.USERNAME);
            PASSWORD = properties.getProperty(EmailCons.PASSWORD);
            CHAR_SET = properties.getProperty(EmailCons.CHAR_SET);
            FROM_EMAIL = properties.getProperty(EmailCons.FROM_EMAIL);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static void sendEmail(String subject,String msg,String emial){
        Email email = new SimpleEmail();
        email.setHostName(HOST_NAME);
        email.setAuthentication(USERNAME,PASSWORD);
        email.setCharset(CHAR_SET);

        try {
            email.setFrom(FROM_EMAIL);
            email.setSubject(subject);
            email.setMsg(msg);
            email.addTo(emial);
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }
    }
    public static void sendHtmlEmail(String subject, String msg, String emial) {
        HtmlEmail email = new HtmlEmail();
        email.setHostName(HOST_NAME);
        email.setAuthentication(USERNAME, PASSWORD);
        email.setCharset(CHAR_SET);

        try {
            email.setFrom(FROM_EMAIL);
            email.setSubject(subject);
            email.setHtmlMsg(msg);
            email.addTo(emial);
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }


    }
}
