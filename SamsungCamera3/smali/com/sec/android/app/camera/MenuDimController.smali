.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final AUTOCONTRAST:I = 0x7

.field public static final AUTO_NIGHT_DETECTION:I = 0x25

.field public static final BEAUTY_LEVEL:I = 0x32

.field public static final BRIGHTNESS:I = 0x6

.field public static final BURST_SETTINGS:I = 0x22

.field public static final CAMCORDER_ANTISHAKE:I = 0x1f

.field public static final CAMCORDER_AUDIOZOOM:I = 0x29

.field public static final CAMCORDER_RESOLUTION:I = 0x1a

.field public static final CAMCORDER_SELF_SWITCH:I = 0x18

.field public static final CAMERA_ANTI_SHAKE:I = 0x5

.field public static final CAMERA_MODE:I = 0x0

.field public static final CAMERA_QUALITY:I = 0x21

.field public static final CAMERA_RESOLUTION:I = 0x11

.field public static final DUAL_CAPTURE_MODE:I = 0x27

.field public static final EFFECT:I = 0xa

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final EYEENLARGE_LEVEL:I = 0x37

.field public static final FACE_DETECTION:I = 0x24

.field public static final FLASH_MODE:I = 0xd

.field public static final FLIP:I = 0x1c

.field public static final FOCUS_MODE:I = 0xe

.field public static final FOCUS_SELECT_MODE:I = 0x2f

.field public static final GPS:I = 0x26

.field public static final GUIDELINE:I = 0x16

.field public static final HDR:I = 0x4

.field public static final HELP:I = 0x2e

.field public static final IMAGE_VIEWER:I = 0x17

.field public static final ISO:I = 0x9

.field public static final METERING:I = 0xf

.field public static final NUM_OF_DIM_BUTTONS:I = 0x39

.field public static final QUICK_ACCESS:I = 0x30

.field public static final RECORDING:I = 0x2

.field public static final RECORDING_MODE:I = 0x19

.field public static final REFRESH:I = 0x1e

.field public static final REMOTE_VIEWFINDER:I = 0x2b

.field public static final REVIEW:I = 0x14

.field public static final SAVE_RICHTONE:I = 0x20

.field public static final SCENE_MODE:I = 0x8

.field public static final SCREEN_FLASH:I = 0x38

.field public static final SELFIE_CONTINUOUS:I = 0x34

.field public static final SELFIE_MODE:I = 0x35

.field public static final SETTINGS:I = 0x2d

.field public static final SHARE_MODE:I = 0x1d

.field public static final SHOOTING_MODE:I = 0x3

.field public static final SHUTTER:I = 0x1

.field public static final SHUTTER_SOUND:I = 0x1b

.field public static final SIDE_TOUCH_MODE:I = 0x2c

.field public static final SLIMFACE_LEVEL:I = 0x36

.field public static final SMILE_SHOT:I = 0xc

.field public static final STORAGE:I = 0x15

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final THUMBNAIL_LIST:I = 0x2a

.field public static final TIMER:I = 0x13

.field public static final TOUCH_TO_CAPTURE:I = 0x28

.field public static final VIEWMODE:I = 0x31

.field public static final VOICECOMMAND:I = 0x23

.field public static final VOLUME_KEY:I = 0x33

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0xb


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLView;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousFlashValue:I

.field private mPreviousMeteringValue:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x39

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    return v0
.end method

.method private merge([Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x39

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDim(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDimArray([Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x39

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSavedUserSettingValues(I)I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;->getSettingsValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getkeyFromCommandId(I)I
    .locals 1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_e
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_f
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_10
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_12
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_18
    const/16 v0, 0x1f

    goto :goto_0

    :sswitch_19
    const/16 v0, 0x29

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x1d

    goto :goto_0

    :sswitch_1b
    const/16 v0, 0x1c

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x21

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0x23

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_20
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x24

    goto :goto_0

    :sswitch_22
    const/16 v0, 0x28

    goto :goto_0

    :sswitch_23
    const/16 v0, 0x25

    goto :goto_0

    :sswitch_24
    const/16 v0, 0x26

    goto :goto_0

    :sswitch_25
    const/16 v0, 0x27

    goto :goto_0

    :sswitch_26
    const/16 v0, 0x2a

    goto :goto_0

    :sswitch_27
    const/16 v0, 0x2b

    goto :goto_0

    :sswitch_28
    const/16 v0, 0x2c

    goto :goto_0

    :sswitch_29
    const/16 v0, 0x30

    goto :goto_0

    :sswitch_2a
    const/16 v0, 0x2d

    goto :goto_0

    :sswitch_2b
    const/16 v0, 0x2e

    goto :goto_0

    :sswitch_2c
    const/16 v0, 0x2f

    goto :goto_0

    :sswitch_2d
    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_31
    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_32
    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_33
    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_34
    const/16 v0, 0x38

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_24
        0x15 -> :sswitch_1f
        0x16 -> :sswitch_14
        0x17 -> :sswitch_2d
        0x1b -> :sswitch_2a
        0x1d -> :sswitch_15
        0x20 -> :sswitch_1
        0x22 -> :sswitch_20
        0x24 -> :sswitch_0
        0x33 -> :sswitch_1b
        0x35 -> :sswitch_1a
        0x3f -> :sswitch_1d
        0x41 -> :sswitch_2
        0x47 -> :sswitch_1e
        0x48 -> :sswitch_33
        0x54 -> :sswitch_32
        0x56 -> :sswitch_21
        0x5c -> :sswitch_23
        0x5e -> :sswitch_25
        0x61 -> :sswitch_22
        0x62 -> :sswitch_2c
        0x6d -> :sswitch_2e
        0x6f -> :sswitch_2b
        0x70 -> :sswitch_28
        0x71 -> :sswitch_26
        0x72 -> :sswitch_27
        0x78 -> :sswitch_29
        0x7a -> :sswitch_34
        0x7d -> :sswitch_31
        0x85 -> :sswitch_2f
        0x86 -> :sswitch_30
        0xbb8 -> :sswitch_16
        0xbb9 -> :sswitch_17
        0xbbf -> :sswitch_18
        0xbc3 -> :sswitch_e
        0xbc4 -> :sswitch_5
        0xbc7 -> :sswitch_19
        0x1c21 -> :sswitch_2a
        0x2330 -> :sswitch_5
    .end sparse-switch
.end method

.method public processDim()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x39

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->handleDimButtons()V

    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_0
    const-string v5, "MenuDimController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshButtonDim: menuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " modeid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "MenuDimController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CamcorderResolutionChanged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isConnectHeadSet()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xbc7

    if-ne p1, v5, :cond_2

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v6, "com.sec.android.gallery3d"

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x14

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1d

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isSecureMode()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :sswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1c

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1c

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    :cond_7
    if-eqz p2, :cond_a

    const/16 v5, 0x14

    new-array v5, v5, [I

    fill-array-data v5, :array_7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_9

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_9

    :cond_8
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setBeautyButtonDimmed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setBeautyButtonDimmed(Z)V

    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x37

    if-ne v5, v6, :cond_1

    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_0

    :sswitch_2
    if-nez p2, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x23

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1c

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x2b

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x2b

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x2b

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :cond_e
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_10

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :cond_10
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_43

    :cond_11
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    :cond_12
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v6, 0xcb

    if-eq v5, v6, :cond_13

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    :cond_13
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_11

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_12

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_13

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v5

    if-ne v5, v9, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_14

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_15

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_16

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-nez v5, :cond_14

    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x24

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x24

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x24

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_2

    :cond_15
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_16

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_3

    :cond_16
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_3

    :pswitch_4
    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_17

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_18

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_19

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_4
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    :cond_17
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_4

    :pswitch_5
    const/16 v5, 0x1b

    new-array v5, v5, [I

    fill-array-data v5, :array_1a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x18

    new-array v5, v5, [I

    fill-array-data v5, :array_1b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_1c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_5
    const-string v5, "640x480"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_19

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_5

    :cond_19
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_5

    :pswitch_6
    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_1d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_1e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_1f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_6
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :cond_1a
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_6

    :pswitch_7
    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_20

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_21

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_22

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_7
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :cond_1b
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_7

    :pswitch_8
    const/16 v5, 0x17

    new-array v5, v5, [I

    fill-array-data v5, :array_23

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x14

    new-array v5, v5, [I

    fill-array-data v5, :array_24

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_25

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_8
    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :cond_1c
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_8

    :pswitch_9
    const/16 v5, 0x14

    new-array v5, v5, [I

    fill-array-data v5, :array_26

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_27

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_28

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_9
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    const-string v5, "3264x1836"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    :cond_1d
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_9

    :pswitch_a
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v5

    if-eqz v5, :cond_1e

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_29

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_2a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_2b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :goto_a
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_b
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_2c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_2d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_2e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_a

    :cond_1f
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_b

    :pswitch_b
    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_2f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_30

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_31

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_c
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_0

    :cond_20
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_c

    :pswitch_c
    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_32

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_33

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_34

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_d
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0

    :cond_21
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_d

    :pswitch_d
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_35

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_36

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_37

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :goto_e
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_f
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    goto/16 :goto_0

    :cond_22
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_38

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_39

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_3a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_e

    :cond_23
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_f

    :pswitch_e
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_3b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_3c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_3d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_10
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v5

    if-nez v5, :cond_27

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    :goto_11
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v5

    if-nez v5, :cond_24

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    :cond_24
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v5

    if-nez v5, :cond_25

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    :cond_25
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_3e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_3f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_40

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->setBeautyButtonDimmed(Z)V

    goto/16 :goto_0

    :cond_26
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_10

    :cond_27
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_11

    :pswitch_f
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_41

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_42

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_43

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_28
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_10
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_44

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_45

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_46

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_29
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_11
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_47

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_48

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_49

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_12
    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_4a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_4b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_4c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_2a
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_13
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_4d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_4e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_4f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_2b
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_50

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_51

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_52

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :goto_12
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_2c
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_53

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_54

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_55

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_12

    :cond_2d
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_2e

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_2e
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_15
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_56

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_57

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_58

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_2f
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_16
    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_59

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_5a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_5b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_13
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v6, 0xcb

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0

    :cond_30
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_31

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_13

    :cond_31
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_13

    :pswitch_17
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_5c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_5d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_5e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_32

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_32
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_18
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_5f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_60

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_61

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_33

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_14
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    :cond_33
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_14

    :pswitch_19
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSoundShotMode(I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_62

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_63

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xe

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setChangedOnly(IZ)V

    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_64

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_65

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_66

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_67

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSoundShotMode()I

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "ro.csc.country_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "JP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    :cond_34
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_15
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v6, 0xcb

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0

    :cond_35
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_36

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_15

    :cond_36
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_15

    :pswitch_1a
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_68

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_69

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x10

    new-array v5, v5, [I

    fill-array-data v5, :array_6a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_16
    const-string v5, "800x450"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    :cond_37
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_16

    :pswitch_1b
    const/16 v5, 0x19

    new-array v5, v5, [I

    fill-array-data v5, :array_6b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_6c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_6d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    sget-object v5, Lcom/sec/android/app/camera/Feature;->PANORAMA360_STILL_RESOLUTION:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_1c
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_6e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_6f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_70

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_38

    const-string v5, "3264x1836"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    :goto_17
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_18
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    :cond_38
    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    goto :goto_17

    :cond_39
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_18

    :pswitch_1d
    const/16 v5, 0x14

    new-array v5, v5, [I

    fill-array-data v5, :array_71

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_72

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_73

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->updateCameraResolutionForDual()V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_3a

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v5

    if-eqz v5, :cond_3c

    :cond_3a
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_19
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_3b

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_3d

    :cond_3b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_3c
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_19

    :cond_3d
    const/16 v5, 0xbb9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_74

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_75

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_76

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :goto_1a
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_3e
    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_77

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xc

    new-array v5, v5, [I

    fill-array-data v5, :array_78

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_79

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_1a

    :cond_3f
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_40

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :cond_40
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    :pswitch_1f
    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_7a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_7b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_7c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    :goto_1b
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    const-string v5, "2048x1152"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    :cond_41
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_42

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1b

    :cond_42
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1b

    :pswitch_20
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_7d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_7e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_7f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v5

    const/16 v6, 0xcb

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0

    :cond_43
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFaceDetectionMode()I

    move-result v5

    if-ne v5, v8, :cond_44

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    :cond_44
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_1

    :sswitch_4
    if-eqz p2, :cond_46

    iget-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v5, :cond_45

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    :cond_45
    packed-switch p2, :pswitch_data_1

    :goto_1c
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_0

    :pswitch_21
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_80

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_81

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_82

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_1c

    :pswitch_22
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_83

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_84

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_85

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_1c

    :pswitch_23
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_86

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_87

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_88

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_1c

    :pswitch_24
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_89

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_8a

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_8b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_25
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_8c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_8d

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_8e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_26
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_8f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_90

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_91

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_27
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_92

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_93

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_94

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_28
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_95

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_96

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_97

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_29
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_98

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_99

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_9a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_2a
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_9b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_9c

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_9d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_2b
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_9e

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_9f

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_a0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_2c
    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_a1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_a2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_a3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :pswitch_2d
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_a4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_a5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_a6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_1c

    :cond_46
    iget-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    iget v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_0

    :sswitch_5
    if-eqz p2, :cond_48

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x5

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x5

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x37

    if-ne v5, v6, :cond_1

    :cond_47
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_0

    :cond_48
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x37

    if-ne v5, v6, :cond_1

    :cond_49
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_0

    :sswitch_6
    if-ne p2, v8, :cond_4a

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_4a

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_a7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_a8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_a9

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_4a

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    const-string v5, "MenuDimController"

    const-string v6, "AUTO_NIGHT_DETECTION_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraISO()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    const-string v5, "MenuDimController"

    const-string v6, "AUTO_NIGHT_DETECTION_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    if-ne p2, v8, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :sswitch_8
    if-ne p2, v8, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :sswitch_9
    if-eqz p2, :cond_4b

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_aa

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_ab

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xa

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :cond_4b
    if-ne p2, v8, :cond_4f

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    :goto_1d
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_4c
    const/16 v4, 0x13

    goto :goto_1d

    :cond_4d
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    :goto_1e
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_4e
    const/16 v4, 0x13

    goto :goto_1e

    :cond_4f
    const/4 v5, 0x6

    if-ne p2, v5, :cond_50

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    goto/16 :goto_0

    :cond_50
    if-nez p2, :cond_52

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_51
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_52
    if-ne p2, v10, :cond_53

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_ac

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_ad

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const-string v5, "1280x720"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    goto/16 :goto_0

    :cond_53
    if-ne p2, v9, :cond_54

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_ae

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_af

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_54
    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x29

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/16 v5, 0x2a

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v5}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_55
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :sswitch_b
    if-ne p2, v8, :cond_58

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isFromSmusician()Z

    move-result v5

    if-eqz v5, :cond_56

    const/16 v5, 0xf

    new-array v5, v5, [I

    fill-array-data v5, :array_b2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_b3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_b4

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isPanoramaFromSmusician()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x17

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    goto/16 :goto_0

    :cond_56
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_b5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_b6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_b7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_b8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    :cond_57
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_0

    :cond_58
    if-ne p2, v10, :cond_5a

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v5

    if-eqz v5, :cond_59

    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_b9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x14

    new-array v5, v5, [I

    fill-array-data v5, :array_ba

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_bb

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/16 v5, 0x13

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    :goto_1f
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    goto/16 :goto_0

    :cond_59
    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_bc

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_bd

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_be

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto :goto_1f

    :cond_5a
    if-ne p2, v9, :cond_5c

    const/16 v5, 0x15

    new-array v5, v5, [I

    fill-array-data v5, :array_bf

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x13

    new-array v5, v5, [I

    fill-array-data v5, :array_c0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_c1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v4

    :goto_20
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    :cond_5b
    const/16 v4, 0x13

    goto :goto_20

    :cond_5c
    const/4 v5, 0x4

    if-ne p2, v5, :cond_1

    const/16 v5, 0x12

    new-array v5, v5, [I

    fill-array-data v5, :array_c2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x11

    new-array v5, v5, [I

    fill-array-data v5, :array_c3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_c4

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    goto/16 :goto_0

    :sswitch_c
    if-nez p2, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x17

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x17

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v5, 0xd

    if-eq p2, v5, :cond_5d

    const/16 v5, 0x1f

    if-eq p2, v5, :cond_5d

    const/16 v5, 0xe

    if-eq p2, v5, :cond_5d

    const/16 v5, 0x38

    if-eq p2, v5, :cond_5d

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1f

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1f

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    :cond_5d
    const/16 v5, 0x28

    if-eq p2, v5, :cond_5e

    const/16 v5, 0x15

    if-ne p2, v5, :cond_1

    :cond_5e
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5f

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRemoteViewfinderMode()I

    move-result v5

    if-ne v5, v8, :cond_1

    :cond_5f
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {p2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x31

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x31

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :sswitch_f
    if-ne p2, v8, :cond_1

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_c5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_c6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_c7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    const/16 v5, 0xbc1

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v5

    if-gt v5, v8, :cond_60

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x1a

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    :cond_60
    const/16 v5, 0x65

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v5

    if-gt v5, v8, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x11

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    :sswitch_10
    if-ne p2, v8, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_c8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_c9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x8

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_0

    :sswitch_11
    if-ne p2, v8, :cond_61

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x5

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x5

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x5

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :cond_61
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x38

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x38

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x38

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :sswitch_12
    if-eqz p2, :cond_62

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_ca

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_cb

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_cc

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    :cond_62
    const/4 v5, 0x5

    if-ne p2, v5, :cond_63

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_cd

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_ce

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x23

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :cond_63
    if-ne p2, v10, :cond_1

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_cf

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_d0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_d1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_0

    :sswitch_13
    if-ne p2, v8, :cond_1

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_d2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_d3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_d4

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :sswitch_14
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_2e
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_d5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_d6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :pswitch_2f
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_d7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_d8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :pswitch_30
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_d9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_da

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_0

    :pswitch_31
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_db

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_dc

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :sswitch_15
    packed-switch p2, :pswitch_data_3

    :pswitch_32
    goto/16 :goto_0

    :pswitch_33
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_dd

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_de

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :pswitch_34
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_df

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_e0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :sswitch_16
    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_35
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_e1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_e2

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :pswitch_36
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_e3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_e4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :pswitch_37
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_e5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_e6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :pswitch_38
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_e7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_e8

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    :sswitch_17
    if-ne p2, v8, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xd

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xd

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto/16 :goto_0

    :sswitch_18
    if-ne p2, v8, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isEnableDuringCall()Z

    move-result v5

    if-eq v5, v8, :cond_64

    sget-boolean v5, Lcom/sec/android/app/camera/Feature;->IMS_VOLTE_MIRRORCALL:Z

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isRmsConnected()Z

    move-result v5

    if-eqz v5, :cond_65

    :cond_64
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_e9

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_ea

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    :goto_21
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x23

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_0

    :cond_65
    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_eb

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x6

    new-array v5, v5, [I

    fill-array-data v5, :array_ec

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto :goto_21

    :sswitch_19
    if-ne p2, v8, :cond_1

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_ed

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_ee

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0x8

    new-array v5, v5, [I

    fill-array-data v5, :array_ef

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto/16 :goto_0

    :sswitch_1a
    rem-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :sswitch_1b
    if-eqz p2, :cond_66

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x22

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x22

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x22

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :cond_66
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x37

    if-ne v5, v6, :cond_1

    :cond_67
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isSingleEffect()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isCoverMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_0

    :sswitch_1c
    if-nez p2, :cond_68

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :cond_68
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :sswitch_1d
    if-nez p2, :cond_69

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x15

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :cond_69
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :sswitch_1e
    if-nez p2, :cond_6a

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :cond_6a
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :sswitch_1f
    if-eq p2, v8, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x14

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x14

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x14

    aput v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :sswitch_20
    if-ne p2, v8, :cond_6c

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v5

    if-eqz v5, :cond_6b

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_f0

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_f1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xa

    new-array v5, v5, [I

    fill-array-data v5, :array_f2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :cond_6b
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_f3

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_f4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_f5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    :cond_6c
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_0

    :sswitch_21
    if-nez p2, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_f6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_f7

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    :sswitch_22
    if-ne p2, v8, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x23

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_0

    :sswitch_23
    if-ne p2, v8, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x33

    aput v7, v5, v6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x4 -> :sswitch_e
        0x6 -> :sswitch_1b
        0x8 -> :sswitch_1
        0xa -> :sswitch_5
        0xc -> :sswitch_6
        0xd -> :sswitch_7
        0xe -> :sswitch_8
        0x16 -> :sswitch_a
        0x1d -> :sswitch_c
        0x24 -> :sswitch_f
        0x35 -> :sswitch_12
        0x3f -> :sswitch_10
        0x41 -> :sswitch_2
        0x57 -> :sswitch_11
        0x59 -> :sswitch_19
        0x5a -> :sswitch_0
        0x63 -> :sswitch_13
        0x75 -> :sswitch_1a
        0x77 -> :sswitch_1c
        0x79 -> :sswitch_6
        0x7c -> :sswitch_1e
        0x7d -> :sswitch_1f
        0x7e -> :sswitch_1d
        0xc9 -> :sswitch_14
        0xca -> :sswitch_15
        0xcb -> :sswitch_16
        0x12c -> :sswitch_17
        0x136 -> :sswitch_18
        0x137 -> :sswitch_20
        0x139 -> :sswitch_21
        0xbb8 -> :sswitch_9
        0xbb9 -> :sswitch_d
        0x1770 -> :sswitch_22
        0x1771 -> :sswitch_23
    .end sparse-switch

    :array_0
    .array-data 4
        0x3
        0x2f
        0xa
        0x1d
        0x22
        0x23
        0x26
        0x2e
        0x19
        0x2b
        0x34
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x2f
        0xa
        0x1d
        0x22
        0x23
        0x26
        0x19
        0x2b
        0x34
    .end array-data

    :array_2
    .array-data 4
        0x2f
        0xa
        0x1d
        0x22
        0x23
        0x26
        0x19
        0x2b
        0x34
    .end array-data

    :array_3
    .array-data 4
        0x14
        0x1d
    .end array-data

    :array_4
    .array-data 4
        0x2b
        0x2f
        0x2e
        0x26
        0x34
    .end array-data

    :array_5
    .array-data 4
        0x2b
        0x2f
        0x26
        0x34
    .end array-data

    :array_6
    .array-data 4
        0x2b
        0x2f
        0x26
        0x34
    .end array-data

    :array_7
    .array-data 4
        0x4
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x19
        0x12
        0x10
        0x24
        0x25
        0x38
        0x14
        0x2f
        0x34
        0x35
        0x32
        0x36
        0x37
    .end array-data

    :array_8
    .array-data 4
        0x4
        0x22
        0xd
        0xe
        0x1f
        0x9
        0xf
        0x12
        0x10
        0x24
        0x25
        0x38
        0x14
        0x2f
        0x34
        0x35
        0x32
        0x36
        0x37
    .end array-data

    :array_9
    .array-data 4
        0x4
        0x22
        0xd
        0x9
        0xf
        0x12
        0x10
        0x24
        0x25
        0x38
        0x14
        0x2f
        0x34
        0x35
        0x32
        0x36
        0x37
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x23
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x23
    .end array-data

    :array_c
    .array-data 4
        0x1c
        0x32
        0x36
        0x37
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_10
        :pswitch_13
        :pswitch_0
        :pswitch_c
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_19
        :pswitch_0
        :pswitch_1b
        :pswitch_8
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_20
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :array_d
    .array-data 4
        0x20
        0x27
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x2f
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x2f
    .end array-data

    :array_10
    .array-data 4
        0x4
        0x2f
    .end array-data

    :array_11
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x11
        0x9
        0x5
        0x21
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2f
    .end array-data

    :array_12
    .array-data 4
        0x4
        0x8
        0xd
        0x11
        0x9
        0x5
        0x21
        0x22
        0x24
        0x25
        0x2f
    .end array-data

    :array_13
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0x5
        0x22
        0x24
        0x25
        0x2f
    .end array-data

    :array_14
    .array-data 4
        0x8
        0x23
        0xd
        0xe
        0x13
        0x21
        0x22
        0x25
        0x20
        0x1d
        0x2b
        0x27
        0x28
        0x15
        0x34
        0x35
        0x32
    .end array-data

    :array_15
    .array-data 4
        0x8
        0x23
        0xd
        0xe
        0x13
        0x21
        0x22
        0x25
        0x1d
        0x2b
        0x28
        0x15
        0x34
        0x35
        0x32
    .end array-data

    :array_16
    .array-data 4
        0x21
        0x8
        0x23
        0x22
        0x25
        0x13
        0x1d
        0x2b
        0x28
        0x15
        0x34
        0x35
        0x32
    .end array-data

    :array_17
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_18
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_19
    .array-data 4
        0x4
        0x8
        0x9
        0x5
        0x22
        0x12
        0x10
        0x14
        0x25
        0x13
        0x2b
        0x2f
    .end array-data

    :array_1a
    .array-data 4
        0x4
        0xa
        0x8
        0x23
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x11
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x26
        0x20
        0x27
        0x2b
        0x2f
        0x28
        0x1c
        0x34
        0x35
        0x32
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x8
        0x23
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x11
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x26
        0x2b
        0x2f
        0x28
        0x1c
        0x34
        0x35
        0x32
    .end array-data

    :array_1c
    .array-data 4
        0x4
        0x8
        0x23
        0x9
        0x5
        0x22
        0x12
        0x10
        0x14
        0x25
        0x26
        0x13
        0x2b
        0x2f
        0x28
        0x1c
        0x34
        0x35
        0x32
    .end array-data

    :array_1d
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_1e
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_1f
    .array-data 4
        0x4
        0x8
        0x9
        0x5
        0x12
        0x10
        0x22
        0x14
        0x25
        0x13
        0x2b
        0x2f
    .end array-data

    :array_20
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_21
    .array-data 4
        0x4
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_22
    .array-data 4
        0x4
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_23
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x9
        0xe
        0x12
        0x10
        0x1f
        0x20
        0x1d
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x26
        0x27
        0x2b
        0x2f
    .end array-data

    :array_24
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x12
        0x10
        0x1f
        0x1d
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x26
        0x2b
        0x2f
    .end array-data

    :array_25
    .array-data 4
        0x4
        0xb
        0x8
        0x9
        0x12
        0x10
        0x5
        0x22
        0x14
        0x24
        0x25
        0x26
        0x1d
        0x2b
        0x2f
    .end array-data

    :array_26
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x20
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x9
        0x27
        0x2b
        0x2f
    .end array-data

    :array_27
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    :array_28
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    :array_29
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x20
        0x12
        0x5
        0xf
        0x24
        0x9
        0x27
        0x2b
        0x2f
        0x34
        0x38
        0x32
    .end array-data

    :array_2a
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x12
        0x5
        0xf
        0x24
        0x9
        0x2b
        0x2f
        0x34
        0x38
        0x32
    .end array-data

    :array_2b
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x5
        0x24
        0x9
        0x2b
        0x2f
        0x34
        0x38
    .end array-data

    :array_2c
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x20
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x9
        0x27
        0x2b
        0x2f
        0x34
        0x38
        0x32
    .end array-data

    :array_2d
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x9
        0x2b
        0x2f
        0x34
        0x38
        0x32
    .end array-data

    :array_2e
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x5
        0x22
        0x24
        0x25
        0x9
        0x2b
        0x2f
        0x34
        0x38
    .end array-data

    :array_2f
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0xe
        0x13
        0x12
        0x7
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_30
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0xe
        0x13
        0x12
        0x7
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_31
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_32
    .array-data 4
        0x4
        0xa
        0x8
        0xe
        0x12
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_33
    .array-data 4
        0x4
        0x8
        0xe
        0x12
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_34
    .array-data 4
        0x4
        0x8
        0x12
        0x22
        0x25
        0x2b
        0x2f
    .end array-data

    :array_35
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_36
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x2b
        0x2f
    .end array-data

    :array_37
    .array-data 4
        0x4
        0x8
        0xd
        0x12
        0x22
        0x2b
        0x2f
    .end array-data

    :array_38
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_39
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_3a
    .array-data 4
        0x4
        0x8
        0xd
        0x12
        0x22
        0x25
        0x2b
        0x2f
    .end array-data

    :array_3b
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x24
        0x20
        0x27
        0x2f
    .end array-data

    :array_3c
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x24
        0x2f
    .end array-data

    :array_3d
    .array-data 4
        0x4
        0x8
        0xd
        0x12
        0x2f
    .end array-data

    :array_3e
    .array-data 4
        0x32
        0x36
        0x37
    .end array-data

    :array_3f
    .array-data 4
        0x32
        0x36
        0x37
    .end array-data

    :array_40
    .array-data 4
        0x32
        0x36
        0x37
    .end array-data

    :array_41
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x9
        0x5
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_42
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x9
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_43
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x9
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_44
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0xe
        0x12
        0x5
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_45
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_46
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_47
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_48
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_49
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x12
        0x5
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_4a
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x11
        0xe
        0x13
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_4b
    .array-data 4
        0x4
        0x8
        0xd
        0x11
        0xe
        0x13
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_4c
    .array-data 4
        0x4
        0x8
        0xd
        0x13
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_4d
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0xe
        0x12
        0x7
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x27
        0x2b
        0x2f
    .end array-data

    :array_4e
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0xe
        0x12
        0x7
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_4f
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x7
        0x5
        0x22
        0x9
        0xf
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_50
    .array-data 4
        0x4
        0xa
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
        0x2f
        0x34
        0x35
        0x32
    .end array-data

    :array_51
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
        0x34
        0x35
        0x32
    .end array-data

    :array_52
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
        0x34
        0x35
        0x32
    .end array-data

    :array_53
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
        0x2f
    .end array-data

    :array_54
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    :array_55
    .array-data 4
        0x4
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
        0x2f
    .end array-data

    :array_56
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_57
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_58
    .array-data 4
        0x4
        0x10
        0xd
        0x12
        0x9
        0xf
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_59
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_5a
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
        0x25
        0x2b
        0x2f
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0x10
        0xd
        0x12
        0x9
        0xf
        0x22
        0x5
        0x25
        0x2b
        0x2f
    .end array-data

    :array_5c
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0x5
        0xe
        0x7
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_5d
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x12
        0x9
        0xf
        0x5
        0xe
        0x7
        0x22
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_5e
    .array-data 4
        0x4
        0x10
        0x12
        0x9
        0xf
        0x22
        0x5
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_5f
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_60
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x5
        0x21
        0x22
        0x14
        0x11
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_61
    .array-data 4
        0x4
        0xb
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_62
    .array-data 4
        0x4
        0xa
        0x1b
        0x23
        0x13
        0x22
        0x25
        0x14
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_63
    .array-data 4
        0x4
        0x1b
        0x23
        0x13
        0x22
        0x25
        0x14
        0xe
        0x2b
        0x2f
    .end array-data

    :array_64
    .array-data 4
        0x4
        0x23
        0x13
        0x22
        0x25
        0x14
        0x2b
        0x2f
    .end array-data

    :array_65
    .array-data 4
        0x34
        0x35
        0x38
        0x32
    .end array-data

    :array_66
    .array-data 4
        0x34
        0x35
        0x38
        0x32
    .end array-data

    :array_67
    .array-data 4
        0x34
        0x35
        0x38
        0x32
    .end array-data

    :array_68
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x20
        0x1d
        0xb
        0x27
        0x2b
        0x2f
    .end array-data

    :array_69
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x1d
        0xb
        0x2b
        0x2f
    .end array-data

    :array_6a
    .array-data 4
        0x4
        0x8
        0xd
        0x10
        0x13
        0x9
        0x12
        0x5
        0xf
        0x22
        0x24
        0x25
        0x1d
        0xb
        0x2b
        0x2f
    .end array-data

    :array_6b
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x20
        0x14
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x16
        0x23
        0x1d
        0x28
        0x27
        0x1
        0x2b
        0x2f
    .end array-data

    :array_6c
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x11
        0xe
        0x13
        0x14
        0x5
        0x9
        0xf
        0x22
        0x24
        0x25
        0x16
        0x23
        0x1d
        0x28
        0x2b
        0x2f
    .end array-data

    :array_6d
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x10
        0x13
        0x14
        0x5
        0xf
        0x9
        0x22
        0x24
        0x25
        0x16
        0x23
        0x1d
        0x28
        0x2b
        0x2f
    .end array-data

    :array_6e
    .array-data 4
        0x4
        0xa
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x11
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
    .end array-data

    :array_6f
    .array-data 4
        0x4
        0xb
        0x8
        0xd
        0x9
        0xe
        0x13
        0x12
        0x10
        0x11
        0x5
        0x21
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_70
    .array-data 4
        0x4
        0xb
        0x8
        0x9
        0x5
        0x13
        0x12
        0x10
        0x22
        0x14
        0x24
        0x25
        0x2b
        0x2f
    .end array-data

    :array_71
    .array-data 4
        0x4
        0xa
        0x22
        0xe
        0x5
        0x1f
        0x19
        0x1c
        0x24
        0x14
        0x25
        0x29
        0x20
        0x2b
        0x2f
        0x32
        0x35
        0x9
        0x36
        0x37
    .end array-data

    :array_72
    .array-data 4
        0x4
        0x22
        0x5
        0x1f
        0x1c
        0x24
        0x14
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x9
    .end array-data

    :array_73
    .array-data 4
        0x4
        0xa
        0x22
        0x5
        0x1c
        0x24
        0x14
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x9
    .end array-data

    :array_74
    .array-data 4
        0x4
        0xa
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
    .end array-data

    :array_75
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    :array_76
    .array-data 4
        0x4
        0x24
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    :array_77
    .array-data 4
        0xb
        0xa
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x20
        0x9
        0x27
        0x2b
    .end array-data

    :array_78
    .array-data 4
        0xb
        0x24
        0x8
        0xd
        0xe
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    :array_79
    .array-data 4
        0xb
        0x24
        0x8
        0xd
        0x12
        0x7
        0x5
        0x22
        0x25
        0x9
        0x2b
    .end array-data

    :array_7a
    .array-data 4
        0x4
        0x1
        0x22
        0xe
        0x25
        0x11
        0x20
        0x27
        0x2b
        0x28
        0xb
        0x13
        0xa
        0x24
        0x2c
        0x23
        0x2f
        0xd
        0x9
        0xf
        0x10
    .end array-data

    :array_7b
    .array-data 4
        0x4
        0x22
        0xe
        0x25
        0x11
        0x2b
        0x28
        0xb
        0x13
        0x24
        0x2c
        0x23
        0x2f
        0xd
        0x9
        0xf
        0x10
    .end array-data

    :array_7c
    .array-data 4
        0x4
        0x22
        0xe
        0x25
        0x2b
        0x28
        0xb
        0x13
        0x24
        0x23
        0x2f
        0xd
        0x9
        0xf
        0x10
    .end array-data

    :array_7d
    .array-data 4
        0x4
        0xa
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x25
        0x20
        0x27
        0x2b
        0x2f
        0x13
        0xb
        0x28
        0x14
        0x23
    .end array-data

    :array_7e
    .array-data 4
        0x4
        0x8
        0xd
        0xe
        0x12
        0x22
        0x24
        0x25
        0x2b
        0x2f
        0x13
        0xb
        0x28
        0x14
        0x23
    .end array-data

    :array_7f
    .array-data 4
        0x4
        0x8
        0xd
        0x12
        0x22
        0x25
        0x2b
        0x2f
        0x28
        0x14
        0x13
        0xb
        0x23
    .end array-data

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_21
        :pswitch_22
        :pswitch_29
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :array_80
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_81
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_82
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_83
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_84
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_85
    .array-data 4
        0x10
        0x12
        0x9
        0xe
        0x22
    .end array-data

    :array_86
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_87
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_88
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_89
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_8a
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_8b
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_8c
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_8d
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_8e
    .array-data 4
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_8f
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_90
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_91
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_92
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_93
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_94
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_95
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_96
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_97
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_98
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_99
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_9a
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_9b
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_9c
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_9d
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_9e
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_9f
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_a0
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_a1
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_a2
    .array-data 4
        0x3
        0xd
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_a3
    .array-data 4
        0x10
        0x12
        0x9
        0xf
        0xe
        0x22
    .end array-data

    :array_a4
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_a5
    .array-data 4
        0x3
        0x10
        0x12
        0x9
        0xf
        0xe
        0x5
        0x7
        0x22
    .end array-data

    :array_a6
    .array-data 4
        0x10
        0x12
        0x9
        0xe
        0x22
    .end array-data

    :array_a7
    .array-data 4
        0x9
        0xa
        0x10
        0xf
        0x1f
    .end array-data

    :array_a8
    .array-data 4
        0x9
        0xa
        0x10
        0xf
        0x1f
    .end array-data

    :array_a9
    .array-data 4
        0x9
        0xa
        0x10
        0x1f
    .end array-data

    :array_aa
    .array-data 4
        0x1d
        0x1f
    .end array-data

    :array_ab
    .array-data 4
        0x1d
        0x1f
    .end array-data

    :array_ac
    .array-data 4
        0x1a
        0x29
    .end array-data

    :array_ad
    .array-data 4
        0x1a
        0x29
    .end array-data

    :array_ae
    .array-data 4
        0x29
        0x1a
    .end array-data

    :array_af
    .array-data 4
        0x29
        0x1a
    .end array-data

    :array_b0
    .array-data 4
        0x1a
        0x29
    .end array-data

    :array_b1
    .array-data 4
        0x1a
        0x29
    .end array-data

    :array_b2
    .array-data 4
        0x3
        0x0
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x11
        0x2f
        0x2b
        0x34
    .end array-data

    :array_b3
    .array-data 4
        0x3
        0x0
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x11
        0x2f
        0x2b
    .end array-data

    :array_b4
    .array-data 4
        0x22
        0x1d
        0x19
        0x17
        0x14
        0x2f
    .end array-data

    :array_b5
    .array-data 4
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x2f
        0x2b
        0x34
    .end array-data

    :array_b6
    .array-data 4
        0x2
        0x22
        0x1d
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x2f
        0x2b
    .end array-data

    :array_b7
    .array-data 4
        0x22
        0x1d
        0x19
        0x17
        0x14
        0x2f
    .end array-data

    :array_b8
    .array-data 4
        0x3
        0x2d
        0x0
    .end array-data

    :array_b9
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0x38
        0xa
        0x28
        0x2c
        0x2f
        0x34
        0x35
        0x2b
    .end array-data

    :array_ba
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0x38
        0x28
        0x2c
        0x2f
        0x34
        0x35
        0x2b
    .end array-data

    :array_bb
    .array-data 4
        0x5
        0x24
        0x25
        0x38
        0x28
        0x2f
        0x34
        0x35
    .end array-data

    :array_bc
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x38
        0x28
        0x2c
        0x2f
        0x34
        0x35
        0x2b
    .end array-data

    :array_bd
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x38
        0x28
        0x2c
        0x2f
        0x34
        0x35
        0x2b
    .end array-data

    :array_be
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x38
        0x28
        0x2f
        0x34
        0x35
    .end array-data

    :array_bf
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0x38
        0xa
        0x28
        0x2c
        0x2f
        0x34
        0x35
        0x2b
    .end array-data

    :array_c0
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x5
        0x1a
        0x19
        0x1f
        0x17
        0x14
        0x24
        0x25
        0x38
        0x28
        0x2c
        0x2f
        0x34
        0x35
        0x2b
    .end array-data

    :array_c1
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x38
        0x28
        0x2f
        0x34
        0x35
    .end array-data

    :array_c2
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x38
        0xa
        0x28
        0x2c
        0x2f
        0x34
        0x35
    .end array-data

    :array_c3
    .array-data 4
        0x3
        0x1
        0x22
        0x1d
        0x11
        0x5
        0x19
        0x17
        0x14
        0x24
        0x25
        0x38
        0x28
        0x2c
        0x2f
        0x34
        0x35
    .end array-data

    :array_c4
    .array-data 4
        0x22
        0x1d
        0x5
        0x19
        0x17
        0x14
        0x23
        0x24
        0x25
        0x38
        0x28
        0x2f
        0x34
        0x35
    .end array-data

    :array_c5
    .array-data 4
        0xd
        0xe
        0x8
        0x1f
        0x7
        0x9
        0xf
        0x29
        0x2f
        0x4
    .end array-data

    :array_c6
    .array-data 4
        0x29
        0x2f
        0x4
    .end array-data

    :array_c7
    .array-data 4
        0xd
        0x8
        0x7
        0x9
        0xf
        0x29
        0x2f
        0x4
    .end array-data

    :array_c8
    .array-data 4
        0x8
        0x15
    .end array-data

    :array_c9
    .array-data 4
        0x8
        0x15
    .end array-data

    :array_ca
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    :array_cb
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    :array_cc
    .array-data 4
        0x14
        0x19
        0x22
    .end array-data

    :array_cd
    .array-data 4
        0x3
        0x23
        0x0
    .end array-data

    :array_ce
    .array-data 4
        0x23
        0x0
    .end array-data

    :array_cf
    .array-data 4
        0x2
        0x3
        0x1a
        0x1f
        0x29
        0x12
        0x19
    .end array-data

    :array_d0
    .array-data 4
        0x2
        0x1a
        0x1f
        0x29
        0x12
        0x19
    .end array-data

    :array_d1
    .array-data 4
        0x29
        0x12
        0x19
    .end array-data

    :array_d2
    .array-data 4
        0x14
        0x22
        0x23
        0x3
        0x2f
        0x34
    .end array-data

    :array_d3
    .array-data 4
        0x14
        0x22
        0x23
        0x34
    .end array-data

    :array_d4
    .array-data 4
        0x14
        0x22
        0x23
        0x34
    .end array-data

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch

    :array_d5
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    :array_d6
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_d7
    .array-data 4
        0x3
        0x2
        0x0
        0x2d
    .end array-data

    :array_d8
    .array-data 4
        0x3
        0x2
        0x0
    .end array-data

    :array_d9
    .array-data 4
        0x3
        0x2
        0x0
        0x2d
        0x25
    .end array-data

    :array_da
    .array-data 4
        0x3
        0x2
        0x0
        0x25
    .end array-data

    :array_db
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    :array_dc
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_34
    .end packed-switch

    :array_dd
    .array-data 4
        0x3
        0x1
        0x0
        0x2d
    .end array-data

    :array_de
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    :array_df
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    :array_e0
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
    .end packed-switch

    :array_e1
    .array-data 4
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    :array_e2
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data

    :array_e3
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    :array_e4
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_e5
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    :array_e6
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_e7
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x2d
    .end array-data

    :array_e8
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_e9
    .array-data 4
        0x1b
        0x2
        0x23
    .end array-data

    :array_ea
    .array-data 4
        0x1b
        0x2
        0x23
    .end array-data

    :array_eb
    .array-data 4
        0x1b
        0x2
        0x23
        0x1
        0x3
        0x0
        0x2d
    .end array-data

    :array_ec
    .array-data 4
        0x1b
        0x2
        0x23
        0x1
        0x3
        0x0
    .end array-data

    :array_ed
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x7
        0x22
        0x25
    .end array-data

    :array_ee
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x7
        0x22
        0x25
    .end array-data

    :array_ef
    .array-data 4
        0xb
        0x8
        0xa
        0x10
        0x13
        0x12
        0x22
        0x25
    .end array-data

    :array_f0
    .array-data 4
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    :array_f1
    .array-data 4
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    :array_f2
    .array-data 4
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    :array_f3
    .array-data 4
        0x25
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    :array_f4
    .array-data 4
        0x25
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    :array_f5
    .array-data 4
        0x25
        0x22
        0x24
        0x26
        0x16
        0x4
        0x9
        0xf
        0x14
        0x28
        0x23
    .end array-data

    :array_f6
    .array-data 4
        0x15
        0x21
    .end array-data

    :array_f7
    .array-data 4
        0x15
        0x21
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x39

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x39

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    aget v3, v0, v2

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFlashMode(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraHDR(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposureValue(I)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAutoContrast(I)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    :pswitch_c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto :goto_1

    :pswitch_d
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCamcorderMode()Z

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v5

    if-ne v5, v7, :cond_1

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    :pswitch_e
    const-string v5, "1920x1080"

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    :pswitch_f
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto :goto_1

    :pswitch_10
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto :goto_1

    :pswitch_11
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAudioZoom()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioZoom(I)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setShareMode(I)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setSaveRichtone(I)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFaceDetectionMode(I)V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultTouchToCapture()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setTouchToCapture(I)V

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAutoNightDetectionMode(I)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setZoomValue(I)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setRemoteViewfinderMode(I)V

    goto/16 :goto_1

    :pswitch_22
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSideTouchMode(I)V

    goto/16 :goto_1

    :pswitch_23
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusSelectMode(I)V

    goto/16 :goto_1

    :pswitch_24
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setViewMode(I)V

    goto/16 :goto_1

    :pswitch_25
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setSelfieContinuousValue(I)V

    goto/16 :goto_1

    :pswitch_26
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setSelfieMode(I)V

    goto/16 :goto_1

    :pswitch_27
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBeautyLevel(I)V

    goto/16 :goto_1

    :pswitch_28
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSlimFaceLevel(I)V

    goto/16 :goto_1

    :pswitch_29
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setEyeEnlargeLevel(I)V

    goto/16 :goto_1

    :pswitch_2a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setScreenFlash(I)V

    goto/16 :goto_1

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1a
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_9
        :pswitch_1c
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_20
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_1e
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_10
        :pswitch_16
        :pswitch_1f
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_0
        :pswitch_18
        :pswitch_11
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_27
        :pswitch_0
        :pswitch_25
        :pswitch_26
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v4, "MenuDimController"

    const-string v5, "synchronizeDim"

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x39

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    instance-of v4, v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void
.end method
