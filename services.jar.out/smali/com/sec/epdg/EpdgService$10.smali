.class Lcom/sec/epdg/EpdgService$10;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 12

    const/16 v11, 0xb

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_0

    const-string v7, "networkInfo"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    const-string v7, "[EPDGService]"

    const-string v8, "Action is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v6, :cond_3

    const-string v7, "[EPDGService]"

    const-string v8, "Cannot get network info from intent"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v5, v8, :cond_1

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_1

    const-string v7, "[EPDGService]"

    const-string v8, "Wifi is disconnected"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/sec/epdg/EpdgService;->resetDataDependency()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3900()V

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1000()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$3000(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$4000(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v10}, Lcom/sec/epdg/EpdgService;->access$200(Z)V

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v7, v10}, Lcom/sec/epdg/EpdgService;->access$4102(Lcom/sec/epdg/EpdgService;I)I

    goto :goto_0

    :cond_4
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-eq v7, v8, :cond_8

    const-string v7, "[EPDGService]"

    const-string v8, "CONNECTIVITY_ACTION is triggered by non WIFI network"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v7, "[EPDGService]"

    const-string v8, "CONNECTIVITY_ACTION is non interested network so ignore"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "networkState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " networkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_6

    if-ne v5, v11, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v7, v10, v8}, Lcom/sec/epdg/EpdgService;->access$3200(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/mapcon/MapconTable;->resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V

    goto/16 :goto_0

    :cond_6
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_1

    if-nez v5, :cond_7

    # invokes: Lcom/sec/epdg/EpdgService;->setDataDependencyIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4200()V

    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4300()Landroid/net/ConnectivityManager;

    move-result-object v7

    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4300()Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v10}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$002(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internet PDN is connected; with interface Name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$000(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne v5, v11, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$2700(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_9

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$4102(Lcom/sec/epdg/EpdgService;I)I

    # invokes: Lcom/sec/epdg/EpdgService;->setDataDependencyIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$4200()V

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$4400(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    :cond_9
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_1

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService$10;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->stopTEpdgTimer()V
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$1600(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0
.end method
