.class final Lcom/android/incallui/motion/CallSContextMotion$1;
.super Ljava/lang/Object;
.source "CallSContextMotion.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/motion/CallSContextMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 8
    .param p1    # Landroid/hardware/scontext/SContextEvent;

    const/4 v7, 0x1

    const-string v4, "CallSContextMotion"

    const-string v5, "onSContextChanged"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "CallSContextMotion"

    const-string v5, "onSContextChanged: has not call"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {v1, v7}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/hardware/scontext/SContextPutDownMotion;->getAction()I

    move-result v0

    const-string v4, "CallSContextMotion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSContextChanged PUT_DOWN_MOTION : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V
    invoke-static {v7}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V
    invoke-static {v4}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionCallMotion()V
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
