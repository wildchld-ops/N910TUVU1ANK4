.class Landroid/net/wifi/PppoeStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/PppoeStateMachine;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/wifi/PppoeStateMachine$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mWifiConnected:Z
    invoke-static {v8, v11}, Landroid/net/wifi/PppoeStateMachine;->access$002(Landroid/net/wifi/PppoeStateMachine;Z)Z

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v9, 0x70004

    invoke-virtual {v8, v9}, Landroid/net/wifi/PppoeStateMachine;->sendMessage(I)V

    goto :goto_0

    :pswitch_1
    const-string v8, "pppoe"

    const-string v9, "onreceive: connected"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mWifiConnected:Z
    invoke-static {v8, v12}, Landroid/net/wifi/PppoeStateMachine;->access$002(Landroid/net/wifi/PppoeStateMachine;Z)Z

    goto :goto_0

    :cond_1
    const-string v8, "android.net.wifi.PPPOE_IP_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "pppoe"

    const-string v9, "onreceive ip action"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$100(Landroid/net/wifi/PppoeStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v8, "pppoe"

    const-string v9, "create mNetworkManagementService"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v8, v9}, Landroid/net/wifi/PppoeStateMachine;->access$102(Landroid/net/wifi/PppoeStateMachine;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;

    :cond_2
    const-string v8, "pppoe_ip_state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "up"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "pppoe_dns1"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    aput-object v2, v4, v11

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v9, "net.dns1"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/net/wifi/PppoeStateMachine;->access$202(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "net.dns1"

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v8, "pppoe_dns2"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    aput-object v3, v4, v12

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v9, "net.dns2"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/net/wifi/PppoeStateMachine;->access$302(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "net.dns2"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$100(Landroid/net/wifi/PppoeStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "pppoe"

    const-string v9, "set DNS for interface"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$100(Landroid/net/wifi/PppoeStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    const-string v9, "ppp3"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v4, v10}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$100(Landroid/net/wifi/PppoeStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    const-string v9, "ppp3"

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v8, "pppoe"

    const-string v9, "setting dns property error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v8, "down"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$200(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v8, "net.dns1"

    iget-object v9, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/PppoeStateMachine;->access$200(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns1:Ljava/lang/String;
    invoke-static {v8, v10}, Landroid/net/wifi/PppoeStateMachine;->access$202(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$300(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    const-string v8, "net.dns2"

    iget-object v9, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/PppoeStateMachine;->access$300(Landroid/net/wifi/PppoeStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mOldDns2:Ljava/lang/String;
    invoke-static {v8, v10}, Landroid/net/wifi/PppoeStateMachine;->access$302(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$100(Landroid/net/wifi/PppoeStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "pppoe"

    const-string v9, "reset DNS for interface"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/PppoeStateMachine$1;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Landroid/net/wifi/PppoeStateMachine;->access$100(Landroid/net/wifi/PppoeStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    const-string/jumbo v9, "wlan0"

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v5

    const-string v8, "pppoe"

    const-string v9, "setting dns property error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
