.class Landroid/hardware/motion/MotionRecognitionPalmMotion$3;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionPalmMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionPalmMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionPalmMotion;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$3;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "ResponseAxT9Info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$3;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mUseGestureDetectorTouchEventEx:Z
    invoke-static {v0, v1}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$302(Landroid/hardware/motion/MotionRecognitionPalmMotion;Z)Z

    :cond_0
    return-void
.end method
