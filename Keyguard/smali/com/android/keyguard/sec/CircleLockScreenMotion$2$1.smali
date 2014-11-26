.class Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;
.super Ljava/lang/Object;
.source "CircleLockScreenMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->onMotionListener(Landroid/hardware/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/CircleLockScreenMotion$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$100(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMotionListener : mCallback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    iget-object v4, v4, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$200(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMotionReady = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    iget-object v4, v4, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionReady:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$300(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mMotionReady:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$300(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$500(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$200(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleLockScreenMotion$2$1;->this$1:Lcom/android/keyguard/sec/CircleLockScreenMotion$2;

    iget-object v2, v2, Lcom/android/keyguard/sec/CircleLockScreenMotion$2;->this$0:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    # getter for: Lcom/android/keyguard/sec/CircleLockScreenMotion;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->access$200(Lcom/android/keyguard/sec/CircleLockScreenMotion;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :cond_0
    return-void
.end method
