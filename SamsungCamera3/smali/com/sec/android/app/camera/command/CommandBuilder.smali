.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# static fields
.field public static Feature:Lcom/sec/android/app/camera/Feature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1
    .param p0    # I
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v0, 0x3

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    return-object v0
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 7
    .param p0    # I
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4    # I

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/16 v2, 0x63

    if-ne p0, v2, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchFavoriteSettingsMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchFavoriteSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchFavoriteSettingsMenuCommand;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/LaunchFavoriteSettingsMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_7
    if-ne p4, v4, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchCameraResolutionMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchCamcorderResolutionMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchRecordingModeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchSoundShotMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_e
    if-ne p4, v4, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraHDR()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result p0

    new-instance v0, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraHDRMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result p0

    new-instance v0, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EasyCameraFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchShareModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    :sswitch_12
    if-ne p4, v4, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_4

    new-instance v0, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_13
    if-ne p4, v4, :cond_5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_5

    new-instance v0, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_14
    if-ne p4, v4, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_6

    new-instance v0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_15
    if-ne p4, v4, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_7

    new-instance v0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_16
    if-ne p4, v4, :cond_8

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_8

    new-instance v0, Lcom/sec/android/app/camera/command/SideTouchCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/SideTouchCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_17
    if-ne p4, v4, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_9

    new-instance v0, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_18
    if-ne p4, v4, :cond_a

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_a

    new-instance v0, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_19
    if-ne p4, v4, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_b

    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_1a
    if-ne p4, v4, :cond_c

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_c

    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_1b
    if-ne p4, v4, :cond_d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_d

    new-instance v0, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_1c
    if-ne p4, v4, :cond_e

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_e

    new-instance v0, Lcom/sec/android/app/camera/command/CameraHDRSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/CameraHDRSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_1d
    if-ne p4, v4, :cond_f

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_f

    new-instance v0, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_f
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_1e
    if-ne p4, v4, :cond_10

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_10

    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_10
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchVolumeKeyAsMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchVolumeKeyAsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_20
    if-ne p4, v4, :cond_11

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_11

    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_11
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_21
    if-ne p4, v4, :cond_12

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_12

    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_22
    if-ne p4, v4, :cond_13

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_13

    new-instance v0, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_13
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_23
    if-ne p4, v4, :cond_14

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_14

    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_14
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_24
    if-ne p4, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_25
    if-ne p4, v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/command/ScreenFlashMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/ScreenFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_26
    if-ne p4, v4, :cond_15

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_15

    new-instance v0, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_15
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_27
    if-ne p4, v4, :cond_16

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_16

    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeFocusSelect;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/ShootingModeFocusSelect;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_16
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_28
    if-ne p4, v4, :cond_17

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_17

    new-instance v0, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_17
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_29
    if-ne p4, v4, :cond_18

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-gt v2, v3, :cond_18

    new-instance v0, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;

    invoke-direct {v0, p1, p0, v5}, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :cond_18
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_2a
    sget-object v2, Lcom/sec/android/app/camera/command/CommandBuilder;->Feature:Lcom/sec/android/app/camera/Feature;

    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSelfieModeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchSelfieModeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchSelfieModeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_2b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSelfieIntervalMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchSelfieIntervalMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchSelfieIntervalMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_2c
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result p0

    new-instance v0, Lcom/sec/android/app/camera/command/CoverFlashMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CoverFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_2d
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditQuickSettingsMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchEditQuickSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchEditQuickSettingsMenuCommand;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/command/LaunchEditQuickSettingsMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :cond_19
    sparse-switch p0, :sswitch_data_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ExternalEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_2e
    new-instance v0, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/CameraModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :sswitch_2f
    new-instance v0, Lcom/sec/android/app/camera/command/CameraHelpSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/CameraHelpSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :sswitch_30
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_31
    new-instance v0, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ExternalShootingModeDownloadCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :sswitch_32
    new-instance v0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_33
    new-instance v0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_34
    new-instance v0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_35
    new-instance v0, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_36
    new-instance v0, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_37
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_38
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :sswitch_39
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v2, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    :sswitch_3a
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_3b
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_3c
    new-instance v0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_3d
    new-instance v0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_3e
    new-instance v0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_3f
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_40
    new-instance v0, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CameraAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_41
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CamcorderAntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_42
    new-instance v0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_43
    new-instance v0, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_44
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_45
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_46
    new-instance v0, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ViewModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_47
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_48
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_49
    new-instance v0, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_4a
    new-instance v0, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_4b
    new-instance v0, Lcom/sec/android/app/camera/command/ScreenFlashMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/ScreenFlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_4c
    new-instance v0, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_4d
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_4e
    new-instance v0, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_4f
    new-instance v0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_50
    new-instance v0, Lcom/sec/android/app/camera/command/SideTouchCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/SideTouchCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_51
    new-instance v0, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CameraQuickAccessCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_52
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_53
    new-instance v0, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShareModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_54
    new-instance v0, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/RemoteViewfinderModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_55
    new-instance v0, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/SaveRichtoneMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_56
    new-instance v0, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VolumeKeyAsMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_57
    new-instance v0, Lcom/sec/android/app/camera/command/SoundShotMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SoundShotMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_58
    new-instance v0, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BeautyFaceModeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_59
    sget-object v2, Lcom/sec/android/app/camera/command/CommandBuilder;->Feature:Lcom/sec/android/app/camera/Feature;

    new-instance v0, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SelfieModeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_5a
    new-instance v0, Lcom/sec/android/app/camera/command/SelfieIntervalMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SelfieIntervalMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_5b
    new-instance v0, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/FaceDetectionMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_5c
    new-instance v0, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/TouchToCaptureMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_5d
    new-instance v0, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SlowMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_5e
    new-instance v0, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FastMotionSpeedSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    goto/16 :goto_0

    :sswitch_5f
    new-instance v0, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/AutoNightDetectionSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_60
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/VoiceGuideMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_61
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/CamcorderAudioZoomSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_62
    new-instance v0, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;

    invoke-direct {v0, p1, p0, v6}, Lcom/sec/android/app/camera/command/DualCaptureModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;IZ)V

    goto/16 :goto_0

    :sswitch_63
    new-instance v0, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ExternalFilterDownloadCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :sswitch_64
    new-instance v0, Lcom/sec/android/app/camera/command/EffectManageCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/EffectManageCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    :sswitch_65
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeManageCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ShootingModeManageCommand;-><init>(Lcom/sec/android/app/camera/Camera;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x7 -> :sswitch_3
        0x8 -> :sswitch_b
        0xb -> :sswitch_20
        0xc -> :sswitch_1c
        0xd -> :sswitch_1d
        0x11 -> :sswitch_21
        0x12 -> :sswitch_5
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_19
        0x15 -> :sswitch_26
        0x17 -> :sswitch_29
        0x1b -> :sswitch_1
        0x22 -> :sswitch_15
        0x27 -> :sswitch_6
        0x33 -> :sswitch_24
        0x35 -> :sswitch_11
        0x3f -> :sswitch_14
        0x47 -> :sswitch_e
        0x48 -> :sswitch_1f
        0x4d -> :sswitch_d
        0x54 -> :sswitch_2a
        0x56 -> :sswitch_17
        0x5a -> :sswitch_b
        0x5c -> :sswitch_12
        0x5e -> :sswitch_13
        0x60 -> :sswitch_22
        0x61 -> :sswitch_18
        0x62 -> :sswitch_27
        0x6d -> :sswitch_4
        0x70 -> :sswitch_16
        0x72 -> :sswitch_1b
        0x78 -> :sswitch_28
        0x7a -> :sswitch_25
        0x7d -> :sswitch_2b
        0x87 -> :sswitch_2d
        0xbb8 -> :sswitch_c
        0xbb9 -> :sswitch_9
        0xbbf -> :sswitch_1e
        0xbc3 -> :sswitch_f
        0xbc4 -> :sswitch_10
        0xbc5 -> :sswitch_5
        0xbc7 -> :sswitch_23
        0x1c21 -> :sswitch_2
        0x2330 -> :sswitch_2c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x16 -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_38
        0x20 -> :sswitch_39
        0x21 -> :sswitch_39
        0x24 -> :sswitch_2e
        0x25 -> :sswitch_39
        0x26 -> :sswitch_39
        0x51 -> :sswitch_58
        0x54 -> :sswitch_59
        0x6f -> :sswitch_2f
        0x7d -> :sswitch_5a
        0x80 -> :sswitch_5a
        0x81 -> :sswitch_5a
        0x82 -> :sswitch_5a
        0x83 -> :sswitch_5a
        0x84 -> :sswitch_5a
        0xc8 -> :sswitch_2e
        0xc9 -> :sswitch_2e
        0x12c -> :sswitch_30
        0x12d -> :sswitch_30
        0x12e -> :sswitch_30
        0x12f -> :sswitch_30
        0x130 -> :sswitch_30
        0x131 -> :sswitch_30
        0x133 -> :sswitch_30
        0x135 -> :sswitch_30
        0x136 -> :sswitch_30
        0x137 -> :sswitch_30
        0x139 -> :sswitch_30
        0x13a -> :sswitch_30
        0x13c -> :sswitch_30
        0x13e -> :sswitch_30
        0x13f -> :sswitch_30
        0x140 -> :sswitch_30
        0x141 -> :sswitch_30
        0x143 -> :sswitch_30
        0x147 -> :sswitch_30
        0x148 -> :sswitch_30
        0x149 -> :sswitch_30
        0x14b -> :sswitch_30
        0x14c -> :sswitch_30
        0x14d -> :sswitch_30
        0x14e -> :sswitch_30
        0x14f -> :sswitch_30
        0x150 -> :sswitch_30
        0x151 -> :sswitch_30
        0x152 -> :sswitch_30
        0x153 -> :sswitch_30
        0x154 -> :sswitch_30
        0x156 -> :sswitch_30
        0x157 -> :sswitch_30
        0x158 -> :sswitch_30
        0x18f -> :sswitch_31
        0x1f4 -> :sswitch_32
        0x1f5 -> :sswitch_32
        0x1f6 -> :sswitch_32
        0x1f7 -> :sswitch_32
        0x1f8 -> :sswitch_32
        0x1f9 -> :sswitch_32
        0x1fa -> :sswitch_32
        0x1fb -> :sswitch_32
        0x1fc -> :sswitch_32
        0x1fd -> :sswitch_32
        0x1fe -> :sswitch_32
        0x1ff -> :sswitch_32
        0x200 -> :sswitch_32
        0x201 -> :sswitch_32
        0x258 -> :sswitch_3a
        0x259 -> :sswitch_3a
        0x25a -> :sswitch_3a
        0x25b -> :sswitch_3a
        0x2bc -> :sswitch_34
        0x2bd -> :sswitch_34
        0x2be -> :sswitch_34
        0x2bf -> :sswitch_34
        0x320 -> :sswitch_35
        0x321 -> :sswitch_35
        0x322 -> :sswitch_35
        0x323 -> :sswitch_35
        0x384 -> :sswitch_3b
        0x385 -> :sswitch_3b
        0x386 -> :sswitch_3b
        0x387 -> :sswitch_3b
        0x388 -> :sswitch_3b
        0x389 -> :sswitch_3b
        0x38a -> :sswitch_3b
        0x3e8 -> :sswitch_3c
        0x3e9 -> :sswitch_3c
        0x3ea -> :sswitch_3c
        0x3eb -> :sswitch_3c
        0x3f7 -> :sswitch_3c
        0x3f8 -> :sswitch_3c
        0x3f9 -> :sswitch_3c
        0x3fa -> :sswitch_3c
        0x3fb -> :sswitch_3c
        0x3fc -> :sswitch_3c
        0x3fd -> :sswitch_3c
        0x3fe -> :sswitch_3c
        0x3ff -> :sswitch_3c
        0x404 -> :sswitch_3c
        0x405 -> :sswitch_3c
        0x406 -> :sswitch_3c
        0x407 -> :sswitch_3c
        0x408 -> :sswitch_3c
        0x409 -> :sswitch_3c
        0x40a -> :sswitch_3c
        0x40b -> :sswitch_3c
        0x40c -> :sswitch_3c
        0x40d -> :sswitch_3c
        0x40e -> :sswitch_3c
        0x40f -> :sswitch_3c
        0x410 -> :sswitch_3c
        0x411 -> :sswitch_3c
        0x412 -> :sswitch_3c
        0x413 -> :sswitch_3c
        0x414 -> :sswitch_3c
        0x415 -> :sswitch_3c
        0x41a -> :sswitch_3d
        0x41b -> :sswitch_3d
        0x41c -> :sswitch_3d
        0x41d -> :sswitch_3d
        0x41e -> :sswitch_3d
        0x41f -> :sswitch_3d
        0x420 -> :sswitch_3d
        0x421 -> :sswitch_3d
        0x422 -> :sswitch_3d
        0x423 -> :sswitch_3d
        0x424 -> :sswitch_3d
        0x425 -> :sswitch_63
        0x426 -> :sswitch_3d
        0x44c -> :sswitch_3e
        0x44d -> :sswitch_3e
        0x44e -> :sswitch_3e
        0x44f -> :sswitch_3e
        0x450 -> :sswitch_3e
        0x451 -> :sswitch_3e
        0x452 -> :sswitch_3e
        0x453 -> :sswitch_3e
        0x454 -> :sswitch_3e
        0x455 -> :sswitch_3e
        0x456 -> :sswitch_3e
        0x457 -> :sswitch_3e
        0x458 -> :sswitch_3e
        0x4b0 -> :sswitch_3f
        0x4b1 -> :sswitch_3f
        0x4b2 -> :sswitch_3f
        0x578 -> :sswitch_40
        0x579 -> :sswitch_40
        0x57a -> :sswitch_41
        0x57b -> :sswitch_41
        0x57c -> :sswitch_41
        0x5dc -> :sswitch_42
        0x5dd -> :sswitch_42
        0x640 -> :sswitch_46
        0x641 -> :sswitch_46
        0x6a4 -> :sswitch_43
        0x6a5 -> :sswitch_43
        0x6a6 -> :sswitch_43
        0x6a7 -> :sswitch_44
        0x6a8 -> :sswitch_44
        0x6a9 -> :sswitch_44
        0x708 -> :sswitch_45
        0x709 -> :sswitch_45
        0x76c -> :sswitch_47
        0x76d -> :sswitch_47
        0x76e -> :sswitch_47
        0x76f -> :sswitch_47
        0x7d0 -> :sswitch_48
        0x7d1 -> :sswitch_48
        0x834 -> :sswitch_49
        0x835 -> :sswitch_49
        0x898 -> :sswitch_4c
        0x899 -> :sswitch_4c
        0x8fc -> :sswitch_36
        0x8fd -> :sswitch_36
        0x8fe -> :sswitch_36
        0x8ff -> :sswitch_36
        0x900 -> :sswitch_36
        0x901 -> :sswitch_36
        0x902 -> :sswitch_36
        0x903 -> :sswitch_36
        0x904 -> :sswitch_36
        0x905 -> :sswitch_36
        0x906 -> :sswitch_36
        0x907 -> :sswitch_36
        0x908 -> :sswitch_36
        0x909 -> :sswitch_36
        0x90a -> :sswitch_36
        0x90b -> :sswitch_36
        0x90c -> :sswitch_36
        0x90d -> :sswitch_36
        0x90e -> :sswitch_36
        0x90f -> :sswitch_36
        0x910 -> :sswitch_36
        0x911 -> :sswitch_36
        0x912 -> :sswitch_36
        0x913 -> :sswitch_36
        0x914 -> :sswitch_36
        0x915 -> :sswitch_36
        0x916 -> :sswitch_36
        0x917 -> :sswitch_36
        0x919 -> :sswitch_36
        0x91a -> :sswitch_36
        0x91b -> :sswitch_36
        0x91c -> :sswitch_36
        0x91d -> :sswitch_36
        0x91e -> :sswitch_36
        0x91f -> :sswitch_36
        0x920 -> :sswitch_36
        0x921 -> :sswitch_36
        0x922 -> :sswitch_36
        0x923 -> :sswitch_36
        0x924 -> :sswitch_36
        0x925 -> :sswitch_36
        0x926 -> :sswitch_36
        0x927 -> :sswitch_36
        0x928 -> :sswitch_36
        0x929 -> :sswitch_36
        0x92a -> :sswitch_36
        0x92b -> :sswitch_36
        0x960 -> :sswitch_37
        0x961 -> :sswitch_37
        0x962 -> :sswitch_37
        0x963 -> :sswitch_37
        0x965 -> :sswitch_37
        0x966 -> :sswitch_37
        0x967 -> :sswitch_37
        0x968 -> :sswitch_37
        0x969 -> :sswitch_37
        0x96a -> :sswitch_37
        0x96b -> :sswitch_37
        0x96d -> :sswitch_37
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbc -> :sswitch_0
        0xc1c -> :sswitch_4d
        0xc1d -> :sswitch_4d
        0xc20 -> :sswitch_4d
        0xc21 -> :sswitch_4d
        0xc22 -> :sswitch_4d
        0xc80 -> :sswitch_4e
        0xc81 -> :sswitch_4e
        0xd48 -> :sswitch_33
        0xd49 -> :sswitch_33
        0xdac -> :sswitch_4e
        0xdad -> :sswitch_4e
        0xf3c -> :sswitch_4a
        0xf3d -> :sswitch_4a
        0xfa0 -> :sswitch_53
        0xfa2 -> :sswitch_53
        0xfa5 -> :sswitch_53
        0x1194 -> :sswitch_4f
        0x1195 -> :sswitch_4f
        0x125c -> :sswitch_52
        0x125d -> :sswitch_52
        0x12c0 -> :sswitch_55
        0x12c1 -> :sswitch_55
        0x1388 -> :sswitch_56
        0x1389 -> :sswitch_56
        0x138a -> :sswitch_56
        0x1450 -> :sswitch_57
        0x1451 -> :sswitch_57
        0x1518 -> :sswitch_58
        0x1519 -> :sswitch_58
        0x157d -> :sswitch_59
        0x157e -> :sswitch_59
        0x157f -> :sswitch_59
        0x1580 -> :sswitch_59
        0x15e0 -> :sswitch_5f
        0x15e1 -> :sswitch_5f
        0x1644 -> :sswitch_4b
        0x1645 -> :sswitch_4b
        0x16a8 -> :sswitch_5b
        0x16a9 -> :sswitch_5b
        0x170e -> :sswitch_4d
        0x170f -> :sswitch_4d
        0x1770 -> :sswitch_5d
        0x1771 -> :sswitch_5d
        0x1772 -> :sswitch_5d
        0x1773 -> :sswitch_5e
        0x1774 -> :sswitch_5e
        0x1775 -> :sswitch_5e
        0x17d6 -> :sswitch_61
        0x17d7 -> :sswitch_61
        0x1838 -> :sswitch_60
        0x1839 -> :sswitch_60
        0x189c -> :sswitch_5c
        0x189d -> :sswitch_5c
        0x1964 -> :sswitch_62
        0x1965 -> :sswitch_62
        0x1a2c -> :sswitch_50
        0x1a2d -> :sswitch_50
        0x1a90 -> :sswitch_54
        0x1a91 -> :sswitch_54
        0x1bbc -> :sswitch_51
        0x1bbd -> :sswitch_51
        0x232a -> :sswitch_63
        0x232e -> :sswitch_64
        0x232f -> :sswitch_65
    .end sparse-switch
.end method

.method public static buildCommandWithSub(ILjava/lang/String;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 2
    .param p0    # I
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/sec/android/app/camera/Camera;
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v0, 0x0

    const/16 v1, 0x155

    if-ne p0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p2, p0, p1}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/Camera;ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method
