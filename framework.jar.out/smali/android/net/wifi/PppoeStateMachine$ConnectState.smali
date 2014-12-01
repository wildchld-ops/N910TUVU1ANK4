.class Landroid/net/wifi/PppoeStateMachine$ConnectState;
.super Lcom/android/internal/util/State;
.source "PppoeStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PppoeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectState"
.end annotation


# instance fields
.field success:I

.field final synthetic this$0:Landroid/net/wifi/PppoeStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/PppoeStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    const-string v0, "pppoe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/PppoeStateMachine$ConnectState;->getName()Ljava/lang/String;

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
    invoke-static {}, Landroid/net/NetworkUtils;->stopPppoe()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->success:I

    iget v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->success:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    iget-object v1, p0, Landroid/net/wifi/PppoeStateMachine$ConnectState;->this$0:Landroid/net/wifi/PppoeStateMachine;

    # getter for: Landroid/net/wifi/PppoeStateMachine;->mOfflineState:Landroid/net/wifi/PppoeStateMachine$OfflineState;
    invoke-static {v1}, Landroid/net/wifi/PppoeStateMachine;->access$900(Landroid/net/wifi/PppoeStateMachine;)Landroid/net/wifi/PppoeStateMachine$OfflineState;

    move-result-object v1

    # invokes: Landroid/net/wifi/PppoeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/PppoeStateMachine;->access$1000(Landroid/net/wifi/PppoeStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x70004
        :pswitch_0
    .end packed-switch
.end method
