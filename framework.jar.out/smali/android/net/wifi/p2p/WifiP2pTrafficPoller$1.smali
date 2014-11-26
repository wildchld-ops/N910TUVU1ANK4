.class Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    # setter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3, v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$102(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->FullMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    # setter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$202(Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$100(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$300(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    move-result-object v2

    invoke-static {v2, v5, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$300(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    move-result-object v2

    invoke-static {v2, v5, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    sget v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    or-int/lit8 v2, v2, 0x2

    sput v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->BTCoexMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    # setter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$202(Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    goto :goto_1

    :cond_3
    if-ne v0, v6, :cond_0

    sget v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    and-int/lit8 v2, v2, -0x3

    sput v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->BTCoexMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    # setter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$202(Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Landroid/net/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    goto :goto_1
.end method
