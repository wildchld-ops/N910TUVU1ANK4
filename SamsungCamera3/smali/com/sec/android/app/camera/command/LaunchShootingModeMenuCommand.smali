.class public Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;
.super Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;
.source "LaunchShootingModeMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchShootingModeMenuCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private final mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private final mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 9

    const/16 v8, 0x4f

    const/16 v7, 0x4e

    const/16 v2, 0x64

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "LaunchShootingModeMenuCommand"

    const-string v3, "return getIsLaunchGallery.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "LaunchShootingModeMenuCommand"

    const-string v3, "return isCapturing.."

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isEasyMode()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuBase;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mLaunchX:F

    iget v2, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mLaunchY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuBase;->setLaunchPosition(FF)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    :goto_2
    move v1, v6

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v2, 0x68

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_3

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/FrontEasyCameraShootingModeResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/resourcedata/FrontEasyCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_3

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto/16 :goto_2
.end method
