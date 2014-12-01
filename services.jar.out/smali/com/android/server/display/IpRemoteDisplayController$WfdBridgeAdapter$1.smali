.class Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Lcom/android/server/display/WfdBridgeBase$BridgeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeConnected()I
    .locals 2

    const-string v0, "WfdBridgeAdapter"

    const-string v1, "Bridge is connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onConnRequest(IILjava/net/InetAddress;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    return-void
.end method

.method public onError(I)V
    .locals 5

    const/16 v4, 0x130

    const/4 v3, -0x1

    const-string v0, "WfdBridgeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_0

    :cond_0
    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->getBridgeConnType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, v1, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2200(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSink(Landroid/net/wifi/p2p/WifiP2pDevice;I)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2102(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2202(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    if-eq p1, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->notifyBridgeStatus(I)V

    goto :goto_0
.end method

.method public onGetStatus()I
    .locals 4

    const-string v1, "WfdBridgeAdapter"

    const-string v2, "onGetStatus"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mScreenState:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2000(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x12d

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x12e

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    if-ltz v1, :cond_2

    const/16 v0, 0x130

    :cond_2
    const-string v1, "WfdBridgeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetStatus return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onOK(Ljava/net/InetAddress;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "WfdBridgeAdapter"

    const-string v1, "onOK"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->notifyBridgeStatus(I)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2200(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2102(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2202(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    :cond_0
    return-void
.end method
