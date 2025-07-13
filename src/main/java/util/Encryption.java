package util;

import org.mindrot.jbcrypt.BCrypt;

public class Encryption {
	 public static String EncryptionByBCrypt(String password) {
	        return BCrypt.hashpw(password, BCrypt.gensalt(12));
	    }
	 public static boolean CheckPassword(String PlainPassword, String HashedPassword) {
	        return BCrypt.checkpw(PlainPassword, HashedPassword);
	    }
	 public static void main(String[] args) {
		 String firstpassowrd = "123456";
		 String hashpassword = EncryptionByBCrypt(firstpassowrd);
		 String secondpassword = "123456";
		 if(CheckPassword(secondpassword, hashpassword)) {
			 System.out.println("Mật khẩu đúng");
		 } else System.out.println("mật khẩu sai");
	 }
}
