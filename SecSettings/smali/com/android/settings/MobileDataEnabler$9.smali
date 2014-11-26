.class Lcom/android/settings/MobileDataEnabler$9;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    iget-object v3, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I
    invoke-static {v2, v3}, Lcom/android/settings/MobileDataEnabler;->access$202(Lcom/android/settings/MobileDataEnabler;I)I

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v2, "MobileDataEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMobileData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SIM_STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CURRENT_SIM_STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.sim.currentcardstatus"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SIM_STATE2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.sim.state2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CURRENT_SIM_STATE2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.sim.currentcardstatus2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAirPlaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I
    invoke-static {v4}, Lcom/android/settings/MobileDataEnabler;->access$200(Lcom/android/settings/MobileDataEnabler;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "gsm.sim.currentcardstatus"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "gsm.sim.currentcardstatus2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->isAirPlaneMode:I
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$200(Lcom/android/settings/MobileDataEnabler;)I

    move-result v2

    if-ne v2, v6, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mHandler:Lcom/android/settings/MobileDataEnabler$SwitchHandler;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;)Lcom/android/settings/MobileDataEnabler$SwitchHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/MobileDataEnabler$9;->this$0:Lcom/android/settings/MobileDataEnabler;

    # getter for: Lcom/android/settings/MobileDataEnabler;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
