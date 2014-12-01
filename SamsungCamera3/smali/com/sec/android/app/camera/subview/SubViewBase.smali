.class public Lcom/sec/android/app/camera/subview/SubViewBase;
.super Ljava/lang/Object;
.source "SubViewBase.java"


# static fields
.field private static final BUTTON_DIM:I = 0x2

.field private static final BUTTON_NORMAL:I = 0x0

.field private static final BUTTON_PRESS:I = 0x1

.field public static final EASYMODE_FRONT_CAMERA_MODE:I = 0x3

.field public static final EASYMODE_REAR_CAMERA_MODE:I = 0x2

.field public static final FRONT_CAMERA_MODE:I = 0x1

.field public static final REAR_CAMERA_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SubViewBase"


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field protected mBaseLayout:Landroid/view/ViewGroup;

.field protected mCameraMode:I

.field protected mEasyMode:Z

.field protected mHelpLayout:Landroid/view/ViewGroup;

.field protected mLastHoverView:Landroid/view/View;

.field protected mLastOrientation:I

.field protected mOrientation:I

.field protected mOrientationMainLCD:I

.field public mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

.field protected mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

.field mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

.field protected mbFocused:Z

.field protected mbLandscapeMode:Z

.field protected mbShowMenu:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastHoverView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbFocused:Z

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewBase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewBase$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientation:I

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbLandscapeMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbShowMenu:Z

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mEasyMode:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastHoverView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mResourceIDMap:Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbFocused:Z

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewBase$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewBase$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientation:I

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbLandscapeMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbShowMenu:Z

    iput v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mCameraMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mEasyMode:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mHelpLayout:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastHoverView:Landroid/view/View;

    return-void
.end method

.method public getDim(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->getDim(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getFixedOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    return v0
.end method

.method public getLastOrientation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    return v0
.end method

.method public getSubViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mSubViewManager:Lcom/sec/android/app/camera/subview/SubViewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewManager;->getSubViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f003c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mBaseLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mHelpLayout:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public isFullScreenMenuShown()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x1c21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHelpMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientation:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/subview/SubViewUtil;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientation:I

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowSettingMenu()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x1c21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isShowShootingModeMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isModeMenuOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowThumbnailListMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isThumbnailListMenuOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowZoomMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->isCameraZoomrMenuOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbShowMenu:Z

    return v0
.end method

.method protected isSubViewUpdateMenu(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isVoiceCommand()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbShowMenu:Z

    return-void
.end method

.method public onShow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbShowMenu:Z

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onUserInteractionOn2ndScreen()V

    :cond_0
    return-void
.end method

.method protected rotateImages(Landroid/widget/ImageView;)V
    .locals 5

    const/16 v4, 0xb4

    const/16 v3, 0x5a

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbLandscapeMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/subview/SubViewBase;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-ne v0, v4, :cond_4

    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    add-int/lit16 v0, v0, 0x10e

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-ne v0, v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-ne v0, v4, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected rotateImagesOnLandscape(Landroid/widget/ImageView;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    if-nez v0, :cond_1

    const/high16 v0, 0x43870000

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x42b40000

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_1
.end method

.method public setFixedOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->getOrientationFromtDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    return-void
.end method

.method public setFixedOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientationMainLCD:I

    return-void
.end method

.method protected setImageresource(Landroid/widget/ImageView;Z[I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    aget v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public setLandscapeMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mbLandscapeMode:Z

    return-void
.end method

.method public setLastOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mLastOrientation:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientation:I

    return-void
.end method

.method protected speakTTS(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0
.end method
