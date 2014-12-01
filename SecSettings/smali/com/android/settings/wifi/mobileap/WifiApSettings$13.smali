.class Lcom/android/settings/wifi/mobileap/WifiApSettings$13;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveLast2gChannel(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveIsShowPassword()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2900(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiConfig.hiddenSSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeAllConnectedDevice()V

    :cond_1
    sput-boolean v6, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3000(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep2Dialog()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getTimeoutValueChangedFlag()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3100(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/wifi/WifiApDialog;->setTimeoutValueChangedFlag(Z)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3200(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_6
    const/4 v1, -0x2

    if-ne p2, v1, :cond_3

    goto :goto_1
.end method
