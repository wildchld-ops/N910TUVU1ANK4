.class public Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$TwGLHandlerGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLQuadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLHandlerGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->mQuadHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;)Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->mDisable:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->mQuadHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler;)Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLQuadHandler$onQuadHandlerMoveListener;->onLongPressed()V

    :cond_0
    return-void
.end method
