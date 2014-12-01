.class Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$4;
.super Ljava/lang/Object;
.source "TwGLCameraBaseIndicators.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->startHideFaceRectAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators$4;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->mFaceRect:[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)[Lcom/sec/android/app/camera/glwidget/TwGLFaceCircle;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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
