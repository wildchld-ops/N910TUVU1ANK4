.class Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode$1;
.super Ljava/lang/Object;
.source "SubViewTutorialCaptureMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;

    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->access$002(Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;

    const/4 v0, 0x1

    # setter for: Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->access$002(Z)Z

    return-void
.end method
