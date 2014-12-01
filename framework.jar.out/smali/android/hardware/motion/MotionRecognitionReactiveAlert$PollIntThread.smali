.class final Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;
.super Ljava/lang/Thread;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionReactiveAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PollIntThread"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;


# direct methods
.method public constructor <init>(Landroid/hardware/motion/MotionRecognitionReactiveAlert;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread$1;-><init>(Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
