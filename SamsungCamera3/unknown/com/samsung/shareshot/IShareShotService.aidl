package com.samsung.shareshot;

import com.samsung.shareshot.User;
import com.samsung.dmc.ux.db.PersonalSettingInfo;
import com.samsung.dmc.ux.db.UserInfo;
import com.samsung.dmc.ux.db.ProcessInfo;

interface IShareShotService{
	
	void joinIn();
	void leaveOut();
	
	boolean isJoinedIn();
	
	void setLocalPersonInfo(in PersonalSettingInfo personalSettingInfo);
	PersonalSettingInfo getLocalPersonInfo();
	List<User> getUserList();
		
	void activateUser(String userIP);		
	void cancelActivateUser(String userIP);	
	void ackActivateUser(String userIP);
	void rejectActivateUser(String userIP);
	void deactivateUser(String userIP);
	
	void shareFile(String path);
	void cancelRecv(int taskID);
	
	void setIsCameraOnForeground(boolean flag);
	boolean getIsCameraOnForeground();
	
	void setAutoPreview(boolean flag);
	boolean getAutoPreview();
	
	void setAutoStart(boolean flag);
	boolean isAutoStart();
	
	void setNotificationConfirmed(boolean flag);	// true : send notification confirmed, false : receive...
	
	int testSnS();
	
	int checkAppID();
	
	// [taik][2011.06.29] ShareWithRequestDialog Event Handling을 위해 추가함
	void sendAcceptActivateRequestMessage(in UserInfo userInfo);
	void sendRejectActivateRequestMessage(in UserInfo userInfo);
	
	// [taik][2011.07.05] Notification Count 세팅을 위해 추가함
	int getRecvCount();
	void setRecvCount(in int count);
	int addRecvCount();
	int getSendCount();
	void setSendCount(in int count);
	int addSendCount();
	int getRecvFailCount();
	void setRecvFailCount(in int count);
	int addRecvFailCount();
	int getSendFailCount();
	void setSendFailCount(in int count);
	int addSendFailCount();

}