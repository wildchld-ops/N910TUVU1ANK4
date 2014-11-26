.class public Lcom/sec/android/app/camera/subview/SubViewManager;
.super Ljava/lang/Object;
.source "SubViewManager.java"


# static fields
.field private static final MSG_UPDATE_LANDSCAPE_MENU:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SubViewManager"

.field private static final UPDATE_LANDSCAPE_MENU_DELAY:I = 0xc8

.field private static mEasyMode:Z


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

.field private mIsRequestRotateLayout:Z

.field private mLandscapeMode:Z

.field private mLastOrientation:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

.field protected mSubViewGroup:Landroid/view/ViewGroup;

.field private mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

.field private mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

.field private mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/Camera;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLastOrientation:I

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLandscapeMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mIsRequestRotateLayout:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewManager$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/camera/subview/SubViewManager;->mEasyMode:Z

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewManager;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/subview/SubViewManager;)Lcom/sec/android/app/camera/subview/SubViewBaseMenu;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/subview/SubViewManager;)Z
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewManager;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLandscapeMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/subview/SubViewManager;)I
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewManager;

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/subview/SubViewManager;I)I
    .locals 0
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewManager;
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLastOrientation:I

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SubViewManager"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mSubViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mSubViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mSubViewGroup:Landroid/view/ViewGroup;

    :cond_6
    return-void
.end method

.method public getCamcorderRecordingMenu()Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    return-object v0
.end method

.method public getCameraBaseMenu()Lcom/sec/android/app/camera/subview/SubViewBaseMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    return-object v0
.end method

.method public getCameraEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mSubViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTutorialCaptureMode()Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    return-object v0
.end method

.method public getTutorialRecordingMode()Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    return-object v0
.end method

.method public getTutorialSelectCameraMode()Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    return-object v0
.end method

.method public handleDimButtons()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "handleDimButtons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBaseMenuLoadingComplete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SubViewManager"

    const-string v1, "return handleDimButtons because basemenu is still loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->handleDimButtons()V

    goto :goto_0
.end method

.method public hideBaseMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->hideBaseMenu()V

    :cond_0
    return-void
.end method

.method public hideBaseMenuForBestShot()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->hideBaseMenuForBestShot()V

    :cond_0
    return-void
.end method

.method public hideBaseMenuForEditQuickSettings()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->hideBaseMenuForEditQuickSettings()V

    :cond_0
    return-void
.end method

.method public hideBaseMenuForShootingMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->hideBaseMenuForShootingMode()V

    :cond_0
    return-void
.end method

.method public hideCameraBaseIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->hideCameraBaseIndicator()V

    :cond_0
    return-void
.end method

.method public hideRecordingMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->onHide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->showBaseMenu()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLandscapeMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->translateMenu2()V

    :cond_1
    return-void
.end method

.method public initialize()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewManager;->setOrientationListener()V

    return-void
.end method

.method public isShutterPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->isShutterPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBaseMenuLoadingComplete()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "onBaseMenuLoadingComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    const-string v0, "SubViewManager"

    const-string v1, "mActivityContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mIsRequestRotateLayout:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mIsRequestRotateLayout:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewManager;->rotateLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewManager;->handleDimButtons()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->refreshShortcutMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->onShow()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->onCameraSettingsChanged(II)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1    # I

    const-string v0, "SubViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged oldOrienatation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewManager;->rotateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewManager;->handleDimButtons()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->onHide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->onHide()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->onHide()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->onHide()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->onHide()V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->onShow()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->onHide()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->onShow()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->onShow()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->onShow()V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewManager;->handleDimButtons()V

    return-void
.end method

.method public onTutorialMode()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialRecordingMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialRecordingMode;->mTutorialStep:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->setStepRecordingStart()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialSelectCameraMode;->mTutorialStep:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->setStepSelectMode()V

    :cond_1
    return-void
.end method

.method public refreshShortcutMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->refreshShortcutMenu()V

    :cond_0
    return-void
.end method

.method public resetCameraSideBar()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "resetCameraSideBar"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->resetCameraSideBar()V

    :cond_0
    return-void
.end method

.method public rotateLayout()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "SubViewManager"

    const-string v1, "rotateLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    const-string v0, "SubViewManager"

    const-string v1, "mActivityContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isBaseMenuLoadingComplete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SubViewManager"

    const-string v1, "return rotateLayout because basemenu is still loading"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mIsRequestRotateLayout:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mSubViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mSubViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->rotateLayout()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->rotateLayout()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialCaptureMode:Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialCaptureMode;->rotateLayout()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialRecordingMode:Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialRecordingMode;->rotateLayout()V

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mTutorialSelectCameraMode:Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewTutorialSelectCameraMode;->rotateLayout()V

    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLandscapeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->hideBaseMenu()V

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public rotateMenu()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "rotateMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setLastOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->rotateMenu()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    return-void
.end method

.method public setBatteryLevel(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setBatteryLevel(IZ)V

    :cond_0
    return-void
.end method

.method public setButtonsDimControlForOverlayDialog(Z)V
    .locals 2
    .param p1    # Z

    const-string v0, "SubViewManager"

    const-string v1, "setButtonsDimControlForOverlayDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->handleDimButtons(Z)V

    :cond_0
    return-void
.end method

.method public setFlashIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setFlashIndicator(I)V

    :cond_0
    return-void
.end method

.method public setGPSIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setGPSIndicator(I)V

    :cond_0
    return-void
.end method

.method public setLandscapeMode(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "SubViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLandscapeMode : landscapemode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mLandscapeMode:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setLandscapeMode(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBase;->setLandscapeMode(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public setLowlightIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setLowlightIndicator(I)V

    :cond_0
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    const-string v0, "SubViewManager"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/camera/subview/SubViewManager;->mEasyMode:Z

    if-eqz v0, :cond_0

    const-string v0, "SubViewManager"

    const-string v1, "Don\'t rotate recording menu"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewManager$2;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/subview/SubViewManager$2;-><init>(Lcom/sec/android/app/camera/subview/SubViewManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public setRecordingModeIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setRecordingModeIndicator(I)V

    :cond_0
    return-void
.end method

.method public setRemainCountIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setRemainCountIndicator(I)V

    :cond_0
    return-void
.end method

.method public setShutterBtnPressed(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setShutterBtnPressed(Z)V

    :cond_0
    return-void
.end method

.method public setStorageIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setStorageIndicator(I)V

    :cond_0
    return-void
.end method

.method public setTimerIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setTimerIndicator(I)V

    :cond_0
    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setVoiceStatus(I)V

    :cond_0
    return-void
.end method

.method public showBaseMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->showBaseMenu()V

    :cond_0
    return-void
.end method

.method public showBaseMenuForEditQuickSettings()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->showBaseMenuForEditQuickSettings()V

    :cond_0
    return-void
.end method

.method public showCameraBaseIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->showCameraBaseIndicator()V

    :cond_0
    return-void
.end method

.method public showRecordingMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->hideBaseMenuForRecording()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->onShow()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mRecordingMenu:Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewRecordingMenu;->handleDimButtons()V

    :cond_2
    return-void
.end method

.method public showVoiceInputIndicator(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewManager;->mBaseMenu:Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->showVoiceInputIndicator(I)V

    :cond_0
    return-void
.end method
