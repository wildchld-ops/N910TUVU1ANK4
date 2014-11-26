.class Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;
.super Landroid/view/OrientationEventListener;
.source "SubViewTutorialSelectCameraMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const-string v1, "SubViewTutorialSelectCameraMode"

    const-string v2, "onOrientationChanged: orientation - unknown orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->getOrientationFromtDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    iget v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-eq v1, v0, :cond_0

    const-string v1, "SubViewTutorialSelectCameraMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastOrientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    iget v3, v3, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newOrientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    iput v0, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->rotateLayout()V

    goto :goto_0
.end method
