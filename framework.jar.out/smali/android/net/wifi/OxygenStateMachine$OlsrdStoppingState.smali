.class Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;
.super Lcom/android/internal/util/State;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/OxygenStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/OxygenStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdMonitor:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$100(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->stopMonitoring()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x1

    # getter for: Landroid/net/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/OxygenStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mCommander:Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$200(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->terminate()Z

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mCommander:Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$200(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->quit()V

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    const v2, 0x20173

    invoke-virtual {v1, v2}, Landroid/net/wifi/OxygenStateMachine;->sendMessage(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$300(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->stopOlsrd()Z

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mController:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$400(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    const v2, 0x20162

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/OxygenStateMachine;->access$500(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/OxygenStateMachine;->access$600(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # invokes: Landroid/net/wifi/OxygenStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/OxygenStateMachine;->access$700(Landroid/net/wifi/OxygenStateMachine;Landroid/os/Message;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2015e -> :sswitch_3
        0x2015f -> :sswitch_0
        0x20165 -> :sswitch_1
        0x20173 -> :sswitch_2
    .end sparse-switch
.end method
