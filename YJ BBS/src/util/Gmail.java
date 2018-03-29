package util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

//인증을 돕는 
public class Gmail extends Authenticator{

	@Override
	protected PasswordAuthentication getPasswordAuthentication()
	{
		return new PasswordAuthentication("a90138018","xlvksl12");
	}
}
