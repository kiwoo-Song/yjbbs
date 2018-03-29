
package user;



public class userDTO {

	private String userNumber;
	private String userID;
	private String userPassword;
	private String userEmail;
	private String userEmailHash;
	private String userName;
	private String userNick;
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}



	private boolean userEmailChecked;
	
	public String getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(String userNumber) {
		this.userNumber = userNumber;
	}


	public String getUserID() {

		return userID;

	}

	public void setUserID(String userID) {

		this.userID = userID;

	}

	public String getUserPassword() {

		return userPassword;

	}

	public void setUserPassword(String userPassword) {

		this.userPassword = userPassword;

	}

	public String getUserEmail() {

		return userEmail;

	}

	public void setUserEmail(String userEmail) {

		this.userEmail = userEmail;

	}

	public String getUserEmailHash() {

		return userEmailHash;

	}

	public void setUserEmailHash(String userEmailHash) {

		this.userEmailHash = userEmailHash;

	}

	public boolean isUserEmailChecked() {

		return userEmailChecked;

	}

	public void setUserEmailChecked(boolean userEmailChecked) {

		this.userEmailChecked = userEmailChecked;

	}

	

	public userDTO(String userID, String userPassword, String userEmail,

			String userEmailHash, boolean userEmailChecked,String userNumber,String userName,String userNick) {

		this.userID = userID;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userEmailHash = userEmailHash;
		this.userEmailChecked = userEmailChecked;
		this.userNumber = userNumber;
		this.userName= userName;
		this.userNick= userNick;

	}

	public userDTO() {
		
	}

}



