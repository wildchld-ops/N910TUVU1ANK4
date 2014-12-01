.class public Lcom/android/settings/wfd/WfdSwitchEnabler;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/wfd/WfdChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;,
        Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitchPreference;,
        Lcom/android/settings/wfd/WfdSwitchEnabler$WfdSwitch;
    }
.end annotation


# instance fields
.field mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field mWifiDisplaySettings:Lcom/android/settings/wfd/WifiDisplaySettings;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic access$100(Lcom/android/settings/wfd/WfdSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private isWfdConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method checkDPMPolicy(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    :cond_2
    return-void
.end method

.method public onSwitchChanged(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwitchChange << value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    if-nez v2, :cond_1

    const-string v1, "WfdSwitchEnabler"

    const-string v2, "mCommonSwitch is null!, finish"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    invoke-virtual {v2}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->isChecked()Z

    move-result v2

    if-ne v2, p1, :cond_2

    const-string v0, "WfdSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v0}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    invoke-virtual {v2, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    invoke-virtual {v2, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setEnabled(Z)Z

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->checkDPMPolicy(Z)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    invoke-virtual {v1, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiDisplaySettings:Lcom/android/settings/wfd/WifiDisplaySettings;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WfdSwitchEnabler"

    const-string v2, "onPreferenceChange will setWfdEnabledDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mCommonSwitch:Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;

    invoke-virtual {v2, v1}, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->setEnabled(Z)Z

    goto :goto_0
.end method
