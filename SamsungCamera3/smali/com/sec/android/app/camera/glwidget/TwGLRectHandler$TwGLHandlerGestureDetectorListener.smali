.class public Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$TwGLHandlerGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLRectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLHandlerGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->mDisable:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$TwGLHandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLRectHandler;)Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRectHandler$onHandlerMoveListener;->onLongPressed()V

    :cond_0
    return-void
.end method
