.class Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;
.super Landroid/os/Handler;
.source "VRTouchPadGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRTouchPadGestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    # invokes: Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->access$000(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    # getter for: Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;
    invoke-static {v0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->access$100(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    # getter for: Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mStillDown:Z
    invoke-static {v0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->access$200(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    # getter for: Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDoubleTapListener:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;
    invoke-static {v0}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->access$100(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    # getter for: Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->access$300(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$OnTouchPadDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector$VRTouchPadGestureHandler;->this$0:Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->mDeferConfirmSingleTap:Z
    invoke-static {v0, v1}, Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;->access$402(Lcom/samsung/android/vr/view/VRTouchPadGestureDetector;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
