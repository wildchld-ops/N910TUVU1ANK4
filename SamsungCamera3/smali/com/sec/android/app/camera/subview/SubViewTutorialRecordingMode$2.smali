.class Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;
.super Landroid/view/OrientationEventListener;
.source "SubViewTutorialRecordingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1    # I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const-string v1, "SubViewTutorialRecordingMode"

    const-string v2, "onOrientationChanged: orientation - unknown orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget v1, v1, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->mTutorialStep:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->getOrientationFromtDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-eq v1, v0, :cond_0

    const-string v1, "SubViewTutorialRecordingMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastOrientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

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

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iput v0, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->rotateLayout()V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/camera/Util;->roundOrientation(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v0, v1, 0x5a

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iput v0, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    # invokes: Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->translateFocus()V
    invoke-static {v1}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->access$100(Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget-object v1, v1, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode$2;->this$0:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget v2, v2, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->onMoveHelpFocusPicker(I)V

    goto/16 :goto_0
.end method
