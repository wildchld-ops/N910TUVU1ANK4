.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "WifiP2pDevicePicker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$602(Z)Z

    :cond_0
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    :cond_1
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600()Z

    move-result v9

    if-nez v9, :cond_2

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_3
    :goto_0
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_4

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/hardware/motion/MRListener;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1302(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x2

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    :cond_6
    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/WifiManager;

    const/16 v10, 0xd

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1702(Z)Z

    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$602(Z)Z

    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$902(Z)Z

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_8
    const-string v9, "WifiP2pDevicePicker"

    const-string v10, "WIFI_P2P_STATE_DISABLED by certain reason"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    if-eqz v9, :cond_9

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_a
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_b
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-eqz v9, :cond_c

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/hardware/motion/MRListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1302(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    :cond_c
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :cond_d
    const-string v9, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v9, "p2pGroupInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    :cond_e
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v9, "wifiP2pInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pInfo;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_16

    const-string v9, "WifiP2pDevicePicker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connected : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_f
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    :cond_10
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_15

    const-string v9, "WifiP2pDevicePicker"

    const-string v10, "AUTO GO is created for multiple connect"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v5}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    :cond_11
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v9, v10, v5, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_12
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2202(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v9, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v10, -0x1

    invoke-virtual {v9, v10, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/content/SharedPreferences;

    move-result-object v9

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "SAMSUNG_P2P"

    iget-object v12, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v12}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2502(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_13
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v9, "IS_MULTICONNECT"

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_14
    :goto_3
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :cond_15
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_3

    :cond_16
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_17
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "WifiP2pDevicePicker"

    const-string v10, "disconnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1702(Z)Z

    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$902(Z)Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x3

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x4

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    :cond_18
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_1a

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900()Z

    move-result v9

    if-nez v9, :cond_19

    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$602(Z)Z

    :cond_19
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_1a

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    :cond_1a
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_3

    :cond_1b
    const-string v9, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v9, "wifiP2pDevice"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2902(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_1

    :cond_1c
    const-string v9, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "requestState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v4, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_1

    :cond_1d
    const-string v9, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "called_dialog"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_1
.end method
