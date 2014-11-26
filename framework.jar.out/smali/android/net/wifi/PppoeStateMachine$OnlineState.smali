.class Landroid/net/wifi/PppoeStateMachine$OnlineState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string v0, "pppoe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeInfo(Landroid/net/wifi/PPPOEInfo$Status;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$500(Landroid/net/wifi/PppoeStateMachine;Landroid/net/wifi/PPPOEInfo$Status;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_CONNECTED"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1100(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1702(Landroid/net/wifi/PppoeStateMachine;J)J

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1500(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 3

    const-string v0, "pppoe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-wide/16 v1, 0x0

    # setter for: Landroid/net/wifi/PppoeStateMachine;->mPppoeRunningTime:J
    invoke-static {v0, v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1702(Landroid/net/wifi/PppoeStateMachine;J)J

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "PPPOE_STATE_DISCONNECTED"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1100(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x0

    const-string v1, "pppoe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v1, "ALREADY_ONLINE"

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/PppoeStateMachine;->sendPppoeCompletedBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1500(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$OnlineState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    const-string v2, "PPPOE_STATE_DISCONNECTING"

    # invokes: Landroid/net/wifi/PppoeStateMachine;->setPppoeState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/PppoeStateMachine;->access$1100(Landroid/net/wifi/PppoeStateMachine;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x70001
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
