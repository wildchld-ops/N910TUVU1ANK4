.class Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/wifi/p2p/WifiP2pTrafficPoller$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;-><init>(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    # setter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v2, v0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$402(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;Z)Z

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # operator++ for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$508(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)I

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$400(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->notifyOnDataActivity()V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$500(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$500(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->notifyOnDataActivity()V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller;->access$500(Landroid/net/wifi/p2p/WifiP2pTrafficPoller;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Landroid/net/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
