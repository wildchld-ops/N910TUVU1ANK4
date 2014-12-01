.class Landroid/net/wifi/PppoeStateMachine$ConnectingState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingState"
.end annotation


# instance fields
.field pppoeState:Ljava/lang/String;

.field success:I

.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const-string v0, "pppoe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$500(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_CONNECTING"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1100(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v0}, Landroid/net/wifi/PppoeStateMachine;->access$600(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeConfig:Landroid/net/wifi/PPPOEConfig;
    invoke-static {v0}, Landroid/net/wifi/PppoeStateMachine;->access$600(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PPPOEConfig;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->startPppoe(Landroid/net/wifi/PPPOEConfig;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->success:I

    iget v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->success:I

    if-nez v0, :cond_1

    const-string v0, "pppoe"

    const-string v1, "starting pppoe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v1, 0x70007

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->sendMessageDelayed(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;
    invoke-static {v1}, Landroid/net/wifi/PppoeStateMachine;->access$900(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OfflineState;

    move-result-object v1

    # invokes: Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1200(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    const-string v0, "pppoe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v1, 0x70007

    # invokes: Landroid/net/wifi/PppoeStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1600(Landroid/net/wifi/PppoeStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const-string v0, "pppoe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "net.pppoe.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v1, 0x70007

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/PppoeStateMachine;->sendMessageDelayed(IJ)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOnlineState:Landroid/net/wifi/PppoeStateMachine$OnlineState;
    invoke-static {v1}, Landroid/net/wifi/PppoeStateMachine;->access$1300(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OnlineState;

    move-result-object v1

    # invokes: Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1400(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->pppoeState:Ljava/lang/String;

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "FAILURE"

    iget v2, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->success:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1500(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectingState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const v1, 0x70004

    invoke-virtual {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->sendMessage(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x70007
        :pswitch_0
    .end packed-switch
.end method
