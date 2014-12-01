.class Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForUserSelectionState"
.end annotation


# instance fields
.field private mPoorType:I

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$35300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$35400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "wrong state change!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$29600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$35500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    :goto_0
    return-void

    :pswitch_0
    iget v1, v0, Landroid/os/Message;->arg1:I

    iput v1, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x21015
        :pswitch_0
    .end packed-switch
.end method

.method public exit()V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, 0xb

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/WifiStateMachine;->broadcastNotificationMessage(IZ)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$33900(Landroid/net/wifi/WifiStateMachine;IZ)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CMD_USER_SELECTION : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$35600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    :cond_0
    if-eqz v0, :cond_3

    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "keep connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$35700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const-string v4, "skip_internet_check"

    const-string v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/net/wifi/WifiConfigStore;->updateSkipInternetCheck(IZ)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$34400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$35800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "disable connection"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$35900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    :cond_4
    iget v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const-string/jumbo v5, "usable_internet"

    const-string v6, "0"

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiConfigStore;->updateUsableInternet(IZ)V

    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiStateMachine$WaitForUserSelectionState;->mPoorType:I

    if-ne v7, v8, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/net/wifi/WifiConfigStore;->disablePoorNetwork(IILjava/lang/String;Z)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20136
        :pswitch_0
    .end packed-switch
.end method
