.class Landroid/hardware/motion/MotionRecognitionPalmMotion$2;
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

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$2;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionPalmMotion$2;->this$0:Landroid/hardware/motion/MotionRecognitionPalmMotion;

    # getter for: Landroid/hardware/motion/MotionRecognitionPalmMotion;->mPalmObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Landroid/hardware/motion/MotionRecognitionPalmMotion;->access$2600(Landroid/hardware/motion/MotionRecognitionPalmMotion;)Landroid/database/ContentObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method
