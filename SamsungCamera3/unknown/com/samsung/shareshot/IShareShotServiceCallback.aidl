package com.samsung.shareshot;

import com.samsung.shareshot.User;
import com.samsung.dmc.ux.db.ProcessInfo;

interface IShareShotServiceCallback{
	void callbackTest(int value);
	
	void onServiceBinded();
	
	void onJoinInSuccess();
	void onLeaveOutSuccess();
	
	void onRecvEnd(in String path);
	
	void onUserChanged(in User user);
	void onUserListChanged(in List<User> user);
	void onUserActivated(in User user, int activated);
	
	void onTaskAdded(in ProcessInfo processInfo);
	void onTaskUpdated(in ProcessInfo processInfo);
	void onTaskEnded(in ProcessInfo processInfo);
	void onTaskRemoved(in ProcessInfo processInfo);
	
	void onShareWithRequestReceived(String ip);
}