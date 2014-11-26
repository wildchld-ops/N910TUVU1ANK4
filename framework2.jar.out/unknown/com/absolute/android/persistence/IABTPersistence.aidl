/**
 * IABTPersistence.aidl
 *
 * Copyright (c) Absolute Software, 2011-2013. All rights reserved.
 */

package com.absolute.android.persistence;

import com.absolute.android.persistence.IABTPersistedFile;
import com.absolute.android.persistence.IABTPersistenceLog;
import com.absolute.android.persistence.IABTPing;
import com.absolute.android.persistence.IABTResultReceiver;
import com.absolute.android.persistence.IABTGetAppInfoReceiver;
import com.absolute.android.persistence.IABTDownloadReceiver;
import com.absolute.android.persistence.AppProfile;
import com.absolute.android.persistence.MethodSpec;
import com.absolute.android.persistence.MethodReturnValue;

/**
 * This interface allows applications to interact with the Absolute
 * Persistence Service, including: getting and setting the current persistence 
 * state; specifying applications to be installed, and optionally started, 
 * persisted and monitored; and dynamically executing arbitrary methods as
 * as a system privileged process on behalf of the invoker.
 *
 * Note that use of this interface is restricted to applications that are 
 * signed with either the Absolute certificate or the system certificate.
 * Attempts to invoke any of the interface methods by any other applications
 * will result in a java.lang.SecurityException being thrown.
 *
 * Users of this interface should do so via the java class
 * {@link com.absolute.android.persistence.ABTPersistenceManager}.
 * Refer to this class for the API documentation.
 *
 */
/** {@hide} */
interface IABTPersistence {

    int getState();

    void setState(in int newState);
    
    int getVersion();
    
    IABTPersistenceLog getLog(in String logName);
    
     void install(
        in AppProfile appProfile,
        in String apkPath,
        in IABTResultReceiver resultReceiver);
        
    void uninstall(
        in String packageName,
        in boolean deletePersistedFiles,
         in IABTResultReceiver resultReceiver);
 
    AppProfile[] getAllApplicationProfiles();

    AppProfile getApplicationProfile(in String packageName);
    
    void setApplicationProfile(in AppProfile appProfile);
    
    void setPersistence(
        in String packageName,
         in boolean onState);

    void setAllPersistence(in boolean onState);

    int getPersistedAppCount();

    void invokeMethodAsSystem(
        in MethodSpec methodSpec, 
        in IABTResultReceiver resultReceiver);
        
    void registerPing(
        in String packageName,
        in IABTPing pingCallback,
        in int pingIntervalSecs);
        
    void unregisterPing(in String packageName);
    
    IABTPersistedFile getPersistedFile(
        in String packageName,
        in String fileName,
        in boolean append);
        
    String getDeviceId();

    void refreshDeviceId(); 

    void testFirmwareUpdate();

    String getDiagnostics();

    void getAppInfo(
        in String packageName,
        in String accessKey,
        in String updateUrl,
        in String updateIpAddress,
        in IABTGetAppInfoReceiver appInfoResult);

    void downloadApk(
        in String packageName,
        in int version,
        in String downloadUrl,
        in String downloadIpAddress,
        in String digitalSignature,
        in IABTDownloadReceiver downloadReceiver,
        in int progresskB);

}
