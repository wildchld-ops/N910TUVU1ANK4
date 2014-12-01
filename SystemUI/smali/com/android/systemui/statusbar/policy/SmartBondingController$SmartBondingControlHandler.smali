.class Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;
.super Landroid/os/Handler;
.source "SmartBondingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartBondingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartBondingControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "StatusBar.SmartBondingController"

    const-string v1, "EVENT_SHOW_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$600(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$600(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # invokes: Lcom/android/systemui/statusbar/policy/SmartBondingController;->removeSmartBondingUsageAlert()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$700(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$500(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # setter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$502(Lcom/android/systemui/statusbar/policy/SmartBondingController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$300(Lcom/android/systemui/statusbar/policy/SmartBondingController;)J

    move-result-wide v2

    # invokes: Lcom/android/systemui/statusbar/policy/SmartBondingController;->setSBUsageStatus(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;IJ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$000(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding_notification"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # invokes: Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$800(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "StatusBar.SmartBondingController"

    const-string v1, "EVENT_UPDATE_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$600(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # invokes: Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$800(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "StatusBar.SmartBondingController"

    const-string v1, "EVENT_HIDE_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$SmartBondingControlHandler;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # invokes: Lcom/android/systemui/statusbar/policy/SmartBondingController;->removeSmartBondingUsageAlert()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$700(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
