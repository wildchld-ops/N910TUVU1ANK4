.class Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->initDragDrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move-object v1, p1

    move-object v0, p2

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mThread:Landroid/os/HandlerThread;
    invoke-static {v3}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$300(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    # setter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;
    invoke-static {v2, v3}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$402(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceLooper:Landroid/os/Looper;
    invoke-static {v4}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$400(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # setter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2, v3}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$502(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7$1;-><init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1

    const-string v2, "SmartClipDragDrop"

    const-string v3, "onTouch : ACTION_UP : stopService()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$500(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$7;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-virtual {v2}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopService()V

    :cond_1
    return v5
.end method
