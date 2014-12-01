.class Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$1;
.super Ljava/lang/Object;
.source "SubViewTutorialSelectCameraMode.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$1;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->access$002(Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    # setter for: Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->access$002(Z)Z

    return-void
.end method
