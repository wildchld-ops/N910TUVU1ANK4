.class Lcom/android/keyguard/KeyguardViewMediator$6;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p2    # Landroid/os/Looper;
    .param p3    # Landroid/os/Handler$Callback;
    .param p4    # Z

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/policy/IKeyguardShowCallback;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    invoke-static {v3, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4700(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto :goto_0

    :pswitch_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_1

    :goto_2
    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V
    invoke-static {v5, v2, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :pswitch_8
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2, v3, v3}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    :pswitch_a
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_3
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_3

    :goto_4
    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleKeyguardDoneWithCover(ZZ)V
    invoke-static {v5, v2, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    move v3, v4

    goto :goto_4

    :pswitch_b
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    :goto_5
    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$5000(Lcom/android/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_5

    :pswitch_c
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewMediator;->handleShowAssistant()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardViewMediator;->handleDispatchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewMediator;->handleLaunchCamera()V

    goto/16 :goto_0

    :pswitch_10
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewMediator;->handleDismiss()V

    goto/16 :goto_0

    :pswitch_11
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleUpdateRSSI(Landroid/os/Bundle;)V
    invoke-static {v3, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$5100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const-string v3, "requestClass"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isFlightMode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleUpdateFlightMode(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/keyguard/KeyguardViewMediator;->access$5200(Lcom/android/keyguard/KeyguardViewMediator;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->handleLaunchActivityBended(Landroid/app/PendingIntent;)V
    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method
