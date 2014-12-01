.class Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;
.super Ljava/lang/Object;
.source "TwGLSideBezelTouchIndicator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->upAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mShutterAnchor:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    # operator++ for: Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->access$008(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->mAnimationCount:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSideBezelTouchIndicator;->stopSideBezelTouchIconAnimation()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
