.class Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/CircleLockScreenMotion$1;->onMotionListener(Landroid/hardware/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/CircleLockScreenMotion$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$100(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionListener : mCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    iget-object v2, v2, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$200(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMotionReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    iget-object v2, v2, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionReady:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$300(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionReady:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$300(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$200(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$1;

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleLockScreenMotion$1;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$200(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :cond_0
    return-void
.end method
