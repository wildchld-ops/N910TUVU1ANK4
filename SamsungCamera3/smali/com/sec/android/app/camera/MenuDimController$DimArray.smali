.class Lcom/sec/android/app/camera/MenuDimController$DimArray;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/MenuDimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimArray"
.end annotation


# instance fields
.field private mChangeArray:[Z

.field private mDimArray:[Z

.field private final mMenuId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/MenuDimController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/MenuDimController;I)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x39

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    iput p2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean v3, v1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getArray()[Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    return-object v0
.end method

.method public getMenuId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mMenuId:I

    return v0
.end method

.method public getSavedSettingValue(I)I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getReferenceCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->decreaseReferenceCount()V

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public restoreUserSettingValues(Z)V
    .locals 9

    const/16 v8, 0xd

    const/16 v7, 0xb

    const/4 v6, 0x3

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x39

    if-ge v1, v3, :cond_9

    if-eqz p1, :cond_0

    if-ne v1, v8, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$200(Lcom/sec/android/app/camera/MenuDimController;)I

    move-result v2

    :goto_1
    if-eq v2, v5, :cond_0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuDimController;->access$300(Lcom/sec/android/app/camera/MenuDimController;)I

    move-result v2

    :goto_2
    if-eq v2, v5, :cond_1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_5

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    goto :goto_2

    :cond_5
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    goto :goto_3

    :pswitch_2
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraHDR(I)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto :goto_3

    :pswitch_4
    const/16 v3, 0xbbf

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto :goto_3

    :pswitch_5
    const/16 v3, 0xbc7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    goto :goto_3

    :pswitch_6
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto :goto_3

    :pswitch_7
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_3

    :pswitch_8
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_3

    :pswitch_9
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto/16 :goto_3

    :pswitch_a
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_3

    :pswitch_b
    if-nez p1, :cond_2

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_3

    :pswitch_c
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_3

    :pswitch_e
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    goto/16 :goto_3

    :pswitch_f
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCameraResolutionFeature(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    :cond_8
    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_3

    :pswitch_10
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_3

    :pswitch_11
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto/16 :goto_3

    :pswitch_12
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto/16 :goto_3

    :pswitch_13
    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_3

    :pswitch_14
    const/16 v3, 0xbb8

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto/16 :goto_3

    :pswitch_15
    const/16 v3, 0xbb9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_3

    :pswitch_16
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_3

    :pswitch_17
    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_3

    :pswitch_18
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_3

    :pswitch_19
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_3

    :pswitch_1a
    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    const-string v3, "MenuDimController"

    const-string v4, "Voice Command"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_3

    :pswitch_1b
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_3

    :pswitch_1c
    const/16 v3, 0x35

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    goto/16 :goto_3

    :pswitch_1d
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSaveRichtone(I)V

    goto/16 :goto_3

    :pswitch_1e
    const/16 v3, 0x55

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_3

    :pswitch_1f
    const/16 v3, 0x62

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setTouchToCapture(I)V

    goto/16 :goto_3

    :pswitch_20
    const/16 v3, 0x57

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_3

    :pswitch_21
    const/16 v3, 0x58

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setDualCaptureMode(I)V

    goto/16 :goto_3

    :pswitch_22
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_3

    :pswitch_23
    const/16 v3, 0x63

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewfinderMode(I)V

    goto/16 :goto_3

    :pswitch_24
    const/16 v3, 0x70

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    goto/16 :goto_3

    :pswitch_25
    const/16 v3, 0x78

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setQuickAccessMode(I)V

    goto/16 :goto_3

    :pswitch_26
    const/16 v3, 0x72

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setFocusSelectMode(I)V

    goto/16 :goto_3

    :pswitch_27
    const/16 v3, 0x138

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setViewMode(I)V

    goto/16 :goto_3

    :pswitch_28
    const/16 v3, 0x7d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfieContinuousValue(I)V

    goto/16 :goto_3

    :pswitch_29
    const/16 v3, 0x7a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfieMode(I)V

    goto/16 :goto_3

    :pswitch_2a
    const/16 v3, 0x6d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    goto/16 :goto_3

    :pswitch_2b
    const/16 v3, 0x81

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSlimFaceLevel(I)V

    goto/16 :goto_3

    :pswitch_2c
    const/16 v3, 0x82

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setEyeEnlargeLevel(I)V

    goto/16 :goto_3

    :pswitch_2d
    const/16 v3, 0x87

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getSavedSettingValue(I)I

    move-result v2

    if-eq v2, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setScreenFlash(I)V

    goto/16 :goto_3

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1c
        :pswitch_0
        :pswitch_4
        :pswitch_1d
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_1f
        :pswitch_5
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_27
        :pswitch_2a
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method public saveSetting(II)Z
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController;->access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v3, v4, p2}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->increaseReferenceCount()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public varargs saveSettingMulti([I)V
    .locals 8

    const/4 v6, 0x1

    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    if-ltz v3, :cond_1

    const/16 v5, 0x39

    if-ge v3, v5, :cond_1

    move v5, v6

    :goto_1
    if-nez v5, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->this$0:Lcom/sec/android/app/camera/MenuDimController;

    # getter for: Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuDimController;->access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    packed-switch v3, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v5, 0xc

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_2
    const/16 v5, 0xd

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAntiShake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_3
    const/16 v5, 0xe

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAutoContrast()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_4
    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_5
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_6
    const/16 v5, 0xa

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_7
    const/16 v5, 0x8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSingleEffect()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    const/16 v5, 0x5a

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraDualEffect()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_8
    const/16 v5, 0x12

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_9
    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_a
    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_b
    const/16 v5, 0xb

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_c
    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto :goto_2

    :pswitch_d
    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_e
    const/16 v5, 0x9

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_f
    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_10
    const/16 v5, 0x11

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_11
    const/16 v5, 0x16

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_12
    const/16 v5, 0x13

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_13
    const/16 v5, 0xbb8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_14
    const/16 v5, 0xbb9

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_15
    const/16 v5, 0xbbf

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_16
    const/16 v5, 0xbc7

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_17
    const/16 v5, 0x26

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_18
    const/16 v5, 0x10

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_19
    const/16 v5, 0x3f

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_1a
    const/16 v5, 0x47

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_1b
    const/16 v5, 0x15

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_1c
    const/16 v5, 0x22

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSaveRichtone()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_1d
    const/16 v5, 0x55

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_1e
    const/16 v5, 0x62

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTouchToCapture()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_1f
    const/16 v5, 0x57

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_20
    const/16 v5, 0x58

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDualCaptureMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_21
    const/16 v5, 0x35

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_22
    const/16 v5, 0x14

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_23
    const/16 v5, 0x63

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_24
    const/16 v5, 0x70

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSideTouchMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_25
    const/16 v5, 0x78

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getQuickAccessMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_26
    const/16 v5, 0x72

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusSelectMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_27
    const/16 v5, 0x138

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getViewMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_28
    const/16 v5, 0x7d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieContinuousValue()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_29
    const/16 v5, 0x7a

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSelfieMode()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_2a
    const/16 v5, 0x6d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_2b
    const/16 v5, 0x81

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSlimFaceLevel()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_2c
    const/16 v5, 0x82

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getEyeEnlargeLevel()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_2d
    const/16 v5, 0x87

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getScreenFlash()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_1b
        :pswitch_17
        :pswitch_21
        :pswitch_0
        :pswitch_15
        :pswitch_1c
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1d
        :pswitch_1f
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_16
        :pswitch_0
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_27
        :pswitch_2a
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method

.method public set(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x39

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mDimArray:[Z

    aput-boolean p2, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v0, p1

    goto :goto_1
.end method

.method public setChangedOnly(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x39

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController$DimArray;->mChangeArray:[Z

    aput-boolean p2, v0, p1

    goto :goto_1
.end method

.method public varargs setDimMulti([I)V
    .locals 5

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v2, v0, v1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
