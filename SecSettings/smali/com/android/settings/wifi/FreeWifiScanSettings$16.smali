.class Lcom/android/settings/wifi/FreeWifiScanSettings$16;
.super Landroid/os/Handler;
.source "FreeWifiScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "EVENT_TIMEOUT_CONNECT"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v5, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/FreeWifiScanSettings$16$1;

    invoke-direct {v7, p0, v5}, Lcom/android/settings/wifi/FreeWifiScanSettings$16$1;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings$16;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->previousSavedAp:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1500(Lcom/android/settings/wifi/FreeWifiScanSettings;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/FreeWifiScanSettings;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    :cond_4
    const-string v6, "FreeWifiScanSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    if-le v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v7}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1600(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v7, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    # invokes: Lcom/android/settings/wifi/FreeWifiScanSettings;->saveAP(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v6, v7}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1700(Lcom/android/settings/wifi/FreeWifiScanSettings;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # invokes: Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$900(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_1

    :pswitch_1
    const-string v6, "FreeWifiScanSettings"

    const-string v7, "EVENT_TIMEOUT_MANUAL_CONNECT"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    const/4 v7, 0x1

    # invokes: Lcom/android/settings/wifi/FreeWifiScanSettings;->setFreeWifiScanOpenApCheck(Z)V
    invoke-static {v6, v7}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1800(Lcom/android/settings/wifi/FreeWifiScanSettings;Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanPressed:Z
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$1900(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/FreeWifiScanSettings$16$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/FreeWifiScanSettings$16$2;-><init>(Lcom/android/settings/wifi/FreeWifiScanSettings$16;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # invokes: Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$900(Lcom/android/settings/wifi/FreeWifiScanSettings;)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->isInDialog:Z
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$2000(Lcom/android/settings/wifi/FreeWifiScanSettings;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$16;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mScanStateListener:Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;
    invoke-static {v6}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$300(Lcom/android/settings/wifi/FreeWifiScanSettings;)Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/settings/wifi/FreeWifiScanSettings$OnScanStateListener;->onConnecting(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
