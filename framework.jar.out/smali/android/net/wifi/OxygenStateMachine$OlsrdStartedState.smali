.class Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;
.super Lcom/android/internal/util/State;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/OxygenStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/OxygenStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mController:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$400(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v0

    const v1, 0x20161

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    const v1, 0x20166

    # invokes: Landroid/net/wifi/OxygenStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/OxygenStateMachine;->access$2300(Landroid/net/wifi/OxygenStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1    # Landroid/os/Message;

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x1

    # getter for: Landroid/net/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/OxygenStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->getName()Ljava/lang/String;

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

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v8, 0x0

    :goto_0
    :pswitch_1
    return v8

    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentOneShot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1600(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentPeriodic:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1800(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1000(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/OxygenStateMachine;->access$2000(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentOneShot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1600(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentPeriodic:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1800(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    const v1, 0x2015e

    invoke-virtual {v0, v1}, Landroid/net/wifi/OxygenStateMachine;->sendMessage(I)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1000(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/OxygenStateMachine;->access$2100(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    const v1, 0x20163

    invoke-virtual {v0, v1}, Landroid/net/wifi/OxygenStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mCommander:Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$200(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->ping()Z

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    const v1, 0x20166

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/OxygenStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mCommander:Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$200(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mController:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$400(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->getChannelFromFrequency(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;->setChannel(I)Z

    goto/16 :goto_0

    :pswitch_7
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-le v7, v4, :cond_7

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$2200(Landroid/net/wifi/OxygenStateMachine;)I

    move-result v0

    if-ge v0, v4, :cond_3

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # setter for: Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I
    invoke-static {v0, v4}, Landroid/net/wifi/OxygenStateMachine;->access$2202(Landroid/net/wifi/OxygenStateMachine;I)I

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$2200(Landroid/net/wifi/OxygenStateMachine;)I

    move-result v0

    if-ge v0, v7, :cond_5

    const-string v0, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set one shot alarm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I
    invoke-static {v3}, Landroid/net/wifi/OxygenStateMachine;->access$2200(Landroid/net/wifi/OxygenStateMachine;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I
    invoke-static {v4}, Landroid/net/wifi/OxygenStateMachine;->access$2200(Landroid/net/wifi/OxygenStateMachine;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentOneShot:Landroid/app/PendingIntent;
    invoke-static {v4}, Landroid/net/wifi/OxygenStateMachine;->access$1600(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_5
    const-string v0, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set periodic alarm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit16 v3, v7, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-int/lit16 v4, v7, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    mul-int/lit16 v4, v7, 0x3e8

    int-to-long v4, v4

    iget-object v6, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentPeriodic:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/wifi/OxygenStateMachine;->access$1800(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # setter for: Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I
    invoke-static {v0, v7}, Landroid/net/wifi/OxygenStateMachine;->access$2202(Landroid/net/wifi/OxygenStateMachine;I)I

    goto/16 :goto_0

    :cond_7
    if-ne v7, v4, :cond_8

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentOneShot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1600(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentPeriodic:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1800(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "OxygenStateMachine"

    const-string v1, "Alarm interval is 1 sec, so wake_lock is held."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentOneShot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1600(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mPendingIntentPeriodic:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$1800(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/OxygenStateMachine;->access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2015e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
