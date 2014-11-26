package com.samsung.shareshot;

import com.samsung.shareshot.IShareShotServiceCallback;

interface IShareShotCallbackRegister{
	boolean registerCallback(IShareShotServiceCallback cb);
	boolean unregisterCallback(IShareShotServiceCallback cb);		
}