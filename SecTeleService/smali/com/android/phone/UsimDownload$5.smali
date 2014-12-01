.class Lcom/android/phone/UsimDownload$5;
.super Landroid/content/BroadcastReceiver;
.source "UsimDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownload;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UsimDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ril.domesticOta"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->updateNetworkStatus()V
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$200(Lcom/android/phone/UsimDownload;)V

    const-string v3, "com.sec.android.sktota.usim.FAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$100(Lcom/android/phone/UsimDownload;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/UsimDownload;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$1600(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$1500(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$1600(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$1500(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v3, "UsimDownload"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    # invokes: Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_2
    const-string v3, "com.sec.android.sktota.usim.SUCCESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$100(Lcom/android/phone/UsimDownload;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/UsimDownload;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    const-string v3, "UsimDownload"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    # invokes: Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_4
    const-string v3, "com.sec.android.ktota.usim.READY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mSMSHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$1900(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mSMSRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$1800(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const-string v3, "com.android.server.status.regist_reject"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "KtfNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_161722:Z
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$600(Lcom/android/phone/UsimDownload;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v4, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    # invokes: Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string v3, "KtfNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestStopKtOtaReg()V
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$1700(Lcom/android/phone/UsimDownload;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    const/4 v4, 0x1

    # setter for: Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$902(Lcom/android/phone/UsimDownload;Z)Z

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v3

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegOutOfService:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0

    :cond_8
    const-string v3, "LGTNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0

    :cond_9
    const-string v3, "KtfNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V
    invoke-static {v3, v7}, Lcom/android/phone/UsimDownload;->access$1300(Lcom/android/phone/UsimDownload;I)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "LGTNumberReg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v4, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v3, v4}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_1

    :cond_b
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$800(Lcom/android/phone/UsimDownload;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "UsimDownload"

    const-string v4, "AttacReject_ByPass is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$1000(Lcom/android/phone/UsimDownload;)I

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$1100(Lcom/android/phone/UsimDownload;)I

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCausePS:I
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$1200(Lcom/android/phone/UsimDownload;)I

    move-result v3

    if-eqz v3, :cond_6

    :cond_d
    const-string v3, "UsimDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish by reject! cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I
    invoke-static {v5}, Lcom/android/phone/UsimDownload;->access$1000(Lcom/android/phone/UsimDownload;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I
    invoke-static {v5}, Lcom/android/phone/UsimDownload;->access$1100(Lcom/android/phone/UsimDownload;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCausePS:I
    invoke-static {v5}, Lcom/android/phone/UsimDownload;->access$1200(Lcom/android/phone/UsimDownload;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ril.domesticOtaStart"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_121315:Z
    invoke-static {v3}, Lcom/android/phone/UsimDownload;->access$700(Lcom/android/phone/UsimDownload;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "ril.reject_121315"

    const-string v4, "rejected"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.status.regist_reject"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v3, v1}, Lcom/android/phone/UsimDownload;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V
    invoke-static {v3, v7}, Lcom/android/phone/UsimDownload;->access$1300(Lcom/android/phone/UsimDownload;I)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload$5;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v3}, Lcom/android/phone/UsimDownload;->finish()V

    goto/16 :goto_2
.end method
