.class public Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLTimerMenu.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLTimerMenu"

.field private static final TIMER_2SEC_SOUND:I = 0x1c

.field private static final TIMER_GROUP_HEIGHT:I

.field private static final TIMER_GROUP_POS_X:I

.field private static final TIMER_GROUP_POS_Y:I

.field private static final TIMER_GROUP_WIDTH:I

.field private static final TIMER_NUMBER_POS_X:I

.field private static final TIMER_NUMBER_POS_Y:I

.field private static final TIMER_SOUND:I


# instance fields
.field private mIs2SecSoundPlaying:Z

.field private mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

.field private mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTimerNumber:Lcom/sec/android/glview/TwGLImage;

.field private mTimerNumberArray:[I

.field private mTimerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a019b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_X:I

    const v0, 0x7f0a019c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_Y:I

    const v0, 0x7f0a019d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_WIDTH:I

    const v0, 0x7f0a019e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_HEIGHT:I

    const v0, 0x7f0a019f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_X:I

    const v0, 0x7f0a01a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumberArray:[I

    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f020334

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumberArray:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :array_0
    .array-data 4
        0x7f02033e
        0x7f02033f
        0x7f020340
        0x7f020341
        0x7f020342
        0x7f020343
        0x7f020344
        0x7f020345
        0x7f020346
        0x7f020347
    .end array-data
.end method


# virtual methods
.method public onBack()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelShutterTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isSelfieContinuousCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->selfieshotBack()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onUltraWideShotCaptureCancelled()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetUltraWideShot()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->selfieshotReset()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    goto :goto_1
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x37

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method protected onShow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showCropArea(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera;->setWinkDetected(Z)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public updateTime(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "TwGLTimerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumberArray:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLImage;->updateLayout(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

    const v4, 0x7f020334

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method
