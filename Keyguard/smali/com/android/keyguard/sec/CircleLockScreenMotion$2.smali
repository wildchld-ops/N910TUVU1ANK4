.class Lcom/android/keyguard/sec/CircleLockScreenMotion$2;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/CircleLockScreenMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .param p1    # Landroid/hardware/motion/MREvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$000(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$100(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Here comes a motion event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->DBG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$000(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$100(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOCK_EXECUTE_CAMERA_L"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$400(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;-><init>(Lcom/android/keyguard/sec/CircleLockScreenMotion$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
