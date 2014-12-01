.class Lcom/android/server/display/WifiDisplayController$27;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v17, "android.net.wifi.p2p.STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string/jumbo v17, "wifi_p2p_state"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v0, v9}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const-string v17, "android.net.wifi.p2p.PEERS_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v17, "WifiDisplayController"

    const-string v18, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    :cond_3
    const-string v17, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v11}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto :goto_1

    :cond_4
    const-string v17, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const-string/jumbo v17, "wifiP2pDevice"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # setter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$4102(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$4100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const-string v17, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v5, 0xe

    const-string/jumbo v17, "wifi_state"

    const/16 v18, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_display_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_7

    const/4 v14, 0x1

    :goto_2
    const-string/jumbo v17, "wlan.wfd.pickerdialogontop"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    const-string v18, "display"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v8

    if-eqz v14, :cond_0

    if-eqz v12, :cond_0

    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    :cond_8
    const-string v17, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const-string v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_0

    const-string/jumbo v17, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiInfo;

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AP is connected! AP Frquency:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ? WfdFrequency:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$3900(Lcom/android/server/display/WifiDisplayController;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$3900(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22073

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    :cond_9
    const-string v17, "android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string/jumbo v17, "wifi_state"

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WIFI_OXYGEN_STATE_CHANGED_ACTION : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    :cond_a
    const-string v17, "android.intent.action.HDMI_PLUGGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsBootCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string/jumbo v18, "state"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5102(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, "WifiDisplayController"

    const-string v18, "Screen Mirroring is disabled because HDMI is connected..."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)V

    :cond_c
    :goto_3
    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v17, "wlan.wfd.pickerdialogontop"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string/jumbo v17, "wlan.wfd.settingontop"

    const-string v18, "0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto :goto_3

    :cond_f
    const-string v17, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string v18, "URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5802(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dongle Update URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillBrokerClosed:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v19, 0x2ee

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_10
    const-string v17, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const-string/jumbo v6, "true"

    const-string v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const-string v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_13

    :cond_12
    const-string v17, "WifiDisplayController"

    const-string/jumbo v18, "received power saving mode enabled"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22084

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    :cond_14
    const-string v17, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6102(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_15

    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents type is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "recording"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : recording"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22087

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "playback"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : playback"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x22086

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_1

    :cond_17
    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : Video playing"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6202(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_display_limited_contents_playing"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_18
    const-string v17, "android.intent.action.VIDEO_PLAYBACK_STOP"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "WifiDisplayController"

    const-string v18, "LimitedContents : android.intent.action.VIDEO_PLAYBACK_STOP"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6202(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "wifi_display_limited_contents_playing"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v17, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string v17, "WifiDisplayController"

    const-string/jumbo v18, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v19, 0x2ee

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_1a
    const-string v17, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v19, 0x2ee

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_1b
    const-string v17, "com.samsung.wfd.RESULT_WFD_UPDATE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const-string/jumbo v18, "result"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6402(Lcom/android/server/display/WifiDisplayController;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateOnGoing:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$3102(Lcom/android/server/display/WifiDisplayController;Z)Z

    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1c
    const-string v17, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const-string/jumbo v17, "requestState"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string v17, "WifiDisplayController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Received WifiP2pManager.WIFI_P2P_REQUEST_CHANGED_ACTION : requestAccepted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v17

    if-eqz v17, :cond_0

    if-eqz v13, :cond_1d

    const-string v17, "WifiDisplayController"

    const-string v18, "User accepted PIN connect"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const v18, 0x2208a

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v18

    const-wide/16 v19, 0x7530

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_1d
    const-string v17, "WifiDisplayController"

    const-string v18, "User cancelled PIN connect or timeout"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    :cond_1e
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$27;->this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsBootCompleted:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5602(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_1
.end method
