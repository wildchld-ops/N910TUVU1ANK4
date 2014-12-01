.class public Lcom/android/mms/util/LocationSensor;
.super Ljava/lang/Object;
.source "LocationSensor.java"


# static fields
.field public static final LOCATIONSENSOR_RESTORE:I = 0x0

.field public static final LOCATIONSENSOR_TURNON:I = 0x1

.field public static final NOTHING_INVOKED:I = 0x0

.field public static final OFF_INVOKED:I = 0x2

.field public static final ON_INVOKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationSensor"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGPSLocationListener:Landroid/location/LocationListener;

.field private mIsActiveGPSProvider:Z

.field private mIsActiveLocationListener:Z

.field private mIsActiveLocationSensor:Z

.field private mIsActiveNetworkProvider:Z

.field private mIsActivePassiveProvider:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetworkLocationListener:Landroid/location/LocationListener;

.field private mPassiveLocationListener:Landroid/location/LocationListener;

.field private wifiTriger:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/mms/util/LocationSensor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/LocationSensor$1;-><init>(Lcom/android/mms/util/LocationSensor;)V

    iput-object v0, p0, Lcom/android/mms/util/LocationSensor;->mGPSLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/mms/util/LocationSensor$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/LocationSensor$2;-><init>(Lcom/android/mms/util/LocationSensor;)V

    iput-object v0, p0, Lcom/android/mms/util/LocationSensor;->mNetworkLocationListener:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/mms/util/LocationSensor$3;

    invoke-direct {v0, p0}, Lcom/android/mms/util/LocationSensor$3;-><init>(Lcom/android/mms/util/LocationSensor;)V

    iput-object v0, p0, Lcom/android/mms/util/LocationSensor;->mPassiveLocationListener:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/util/LocationSensor;->wifiTriger:I

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/util/LocationSensor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/LocationSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveGPSProvider:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/util/LocationSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveGPSProvider:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/util/LocationSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveNetworkProvider:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/LocationSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveNetworkProvider:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/LocationSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActivePassiveProvider:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/util/LocationSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/util/LocationSensor;->mIsActivePassiveProvider:Z

    return p1
.end method

.method private getMobileDataEnabled()Z
    .locals 4

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    const-string v1, "LocationSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getMobileDataInRoamingEnabled()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v4, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMobileDataInRoamingEnabled : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private getStateOfAgps()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "assisted_gps_enabled"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v4, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStateOfAgps : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v2, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private getStateOfGps()Z
    .locals 4

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LocationSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStateOfGps : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getStateOfMobile()Z
    .locals 5

    iget-object v2, p0, Lcom/android/mms/util/LocationSensor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v2, "LocationSensor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStateOfMobile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getStateOfNetworkProvider()Z
    .locals 5

    iget-object v2, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v2, "LocationSensor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStateOfNetworkProvider : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getStateOfWifi()Z
    .locals 5

    iget-object v2, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    :cond_0
    const-string v2, "LocationSensor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStateOfWifi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isSimReady()Z
    .locals 6

    iget-object v3, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    const-string v3, "LocationSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimReady : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isWiFiConnected(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    goto :goto_0
.end method

.method private setAgps(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setGps(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setMobile(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setMobileInRoaming(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "LocationSensor"

    const-string v1, "setMobileInRoaming completed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNetworkProvider(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/emergencymode/EmergencyManager;->setLocationProvider(ZLandroid/content/Context;)V

    return-void
.end method

.method private setWifi(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/mms/util/LocationSensor;->wifiTriger:I

    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/mms/util/LocationSensor;->wifiTriger:I

    goto :goto_0
.end method

.method private declared-synchronized stopLocationListener()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "LocationSensor"

    const-string v1, "stopLocationListener"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationListener:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mPassiveLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationListener:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized controlLocationSensor(I)V
    .locals 14

    const/4 v13, 0x1

    monitor-enter p0

    :try_start_0
    const-string v11, "LocationSensor"

    const-string v12, "controlLocationSensor"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v13, :cond_5

    const-string v11, "LocationSensor"

    const-string v12, "LOCATIONSENSOR_TURNON : "

    invoke-static {v11, v12}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationSensor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v11, v13, :cond_0

    const-wide/16 v11, 0x7d0

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v11, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationSensor:Z

    if-ne v11, v13, :cond_1

    const-string v11, "LocationSensor"

    const-string v12, "LOCATIONSENSOR_TURNON : Already activated. so END"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getMobileDataEnabled()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfWifi()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfGps()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfAgps()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfNetworkProvider()Z

    move-result v3

    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11, v2}, Lcom/android/mms/util/LocationSensorConfig;->setStateMobile(Landroid/content/Context;Z)V

    if-nez v2, :cond_2

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/mms/util/LocationSensor;->setMobile(Z)V

    :cond_2
    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/android/mms/util/LocationSensorConfig;->setStateWIFI(Landroid/content/Context;Z)V

    if-nez v4, :cond_3

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/mms/util/LocationSensor;->setWifi(Z)V

    :cond_3
    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11, v0}, Lcom/android/mms/util/LocationSensorConfig;->setStateAGPS(Landroid/content/Context;Z)V

    if-nez v0, :cond_4

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/mms/util/LocationSensor;->setAgps(Z)V

    :cond_4
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/mms/util/LocationSensor;->setNetworkProvider(Z)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationSensor:Z

    const-string v11, "LocationSensor"

    const-string v12, "LOCATIONSENSOR_TURNON : "

    invoke-static {v11, v12}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_a

    const-string v11, "LocationSensor"

    const-string v12, "LOCATIONSENSOR_RESTORE : "

    invoke-static {v11, v12}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->stopLocationListener()V

    iget-boolean v11, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationSensor:Z

    if-nez v11, :cond_6

    const-string v11, "LocationSensor"

    const-string v12, "LOCATIONSENSOR_RESTORE : Sensor is not force activated. So END"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/mms/util/LocationSensorConfig;->getStateMobile(Landroid/content/Context;)Z

    move-result v8

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getMobileDataEnabled()Z

    move-result v2

    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/mms/util/LocationSensorConfig;->getStateWIFI(Landroid/content/Context;)Z

    move-result v10

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfWifi()Z

    move-result v4

    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/mms/util/LocationSensorConfig;->getStateGPS(Landroid/content/Context;)Z

    move-result v7

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfGps()Z

    move-result v1

    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/mms/util/LocationSensorConfig;->getStateAGPS(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfAgps()Z

    move-result v0

    iget-object v11, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/mms/util/LocationSensorConfig;->getStateNetworkProvider(Landroid/content/Context;)Z

    move-result v9

    invoke-direct {p0}, Lcom/android/mms/util/LocationSensor;->getStateOfNetworkProvider()Z

    move-result v3

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/mms/util/LocationSensor;->setNetworkProvider(Z)V

    const-string v11, "LocationSensor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[AGPS] Saved state["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] Current State["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v6, v0, :cond_7

    invoke-direct {p0, v6}, Lcom/android/mms/util/LocationSensor;->setAgps(Z)V

    :cond_7
    const-string v11, "LocationSensor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WIFI] Saved state["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] Current State["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v10, v4, :cond_8

    invoke-direct {p0, v10}, Lcom/android/mms/util/LocationSensor;->setWifi(Z)V

    :cond_8
    const-string v11, "LocationSensor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[Mobile] Saved state["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] Current State["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v8, v2, :cond_9

    invoke-direct {p0, v8}, Lcom/android/mms/util/LocationSensor;->setMobile(Z)V

    :cond_9
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationSensor:Z

    const-string v11, "LocationSensor"

    const-string v12, "LOCATIONSENSOR_RESTORE : "

    invoke-static {v11, v12}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v11, "LocationSensor"

    const-string v12, "controlLocationSensor : invalid mode"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public getMyLocation()Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveGPSProvider:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "LocationSensor"

    const-string v2, "GPS location is used"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v2, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has location : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "LocationSensor"

    const-string v2, "Network location is used"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPassiveMyLocation()Landroid/location/Location;
    .locals 2

    const-string v0, "LocationSensor"

    const-string v1, "getPassiveMyLocation()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getWifiStatus()I
    .locals 5

    iget-object v2, p0, Lcom/android/mms/util/LocationSensor;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    :cond_0
    const-string v2, "LocationSensor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(WifiControl)getWifiStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getWifiTrigger()I
    .locals 3

    const-string v0, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(WifiControl)getWifiTrigger(), wifiTriger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/util/LocationSensor;->wifiTriger:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mms/util/LocationSensor;->wifiTriger:I

    return v0
.end method

.method public isActivatedLocationListener()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationListener:Z

    return v0
.end method

.method public declared-synchronized startLocationListener()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "LocationSensor"

    const-string v1, "startLocationListener"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationListener:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveGPSProvider:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveNetworkProvider:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActivePassiveProvider:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/util/LocationSensor;->mGPSLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/util/LocationSensor;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/mms/util/LocationSensor;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/util/LocationSensor;->mPassiveLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationListener:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v6

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/mms/util/LocationSensor;->mIsActiveLocationListener:Z

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
