.class Landroid/hardware/motion/MotionRecognitionReactiveAlert$1;
.super Landroid/os/Handler;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionReactiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$1;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    const-string v0, "MotionRecognitionService"

    const-string v1, " send reactive alert "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$1;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->sendMotionReactiveAlert(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const-string v0, "MotionRecognitionService"

    const-string v1, " send flat to new listner"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$1;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->sendMotionReactiveAlert(I)V

    goto :goto_0
.end method
