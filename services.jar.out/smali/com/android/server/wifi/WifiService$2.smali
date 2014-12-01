.class Lcom/android/server/wifi/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "wifi_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v3, v4

    :goto_0
    # setter for: Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z
    invoke-static {v5, v3}, Lcom/android/server/wifi/WifiService;->access$602(Lcom/android/server/wifi/WifiService;Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, v5, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Lcom/android/server/wifi/WifiService$19;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v5, v5, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiService;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v3, v4, :cond_0

    const-string v3, "WifiService"

    const-string v5, "isHS20AP = 1, show HS20 notification"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    sget-object v4, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/WifiService;->showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    sget-object v4, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_VSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/WifiService;->showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    :cond_4
    const-string v3, "WifiService"

    const-string/jumbo v4, "received CONNECTED state, but config is NULL"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$700(Lcom/android/server/wifi/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, v3, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    sget-object v4, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/wifi/WifiService$HS20_ConType;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wifi/WifiService;->showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "WifiService"

    const-string/jumbo v5, "reset HS20 notification in accordance with Language change"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiService;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    sget-object v4, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/WifiService;->showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    sget-object v4, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_VSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wifi/WifiService;->showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_1

    :cond_7
    const-string v3, "WifiService"

    const-string v4, "config is NULL"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    const-string v3, "WifiService"

    const-string v4, "Receive IP Policy Intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$2;->this$0:Lcom/android/server/wifi/WifiService;

    # invokes: Lcom/android/server/wifi/WifiService;->handleSecurityPolicy()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiService;->access$800(Lcom/android/server/wifi/WifiService;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
