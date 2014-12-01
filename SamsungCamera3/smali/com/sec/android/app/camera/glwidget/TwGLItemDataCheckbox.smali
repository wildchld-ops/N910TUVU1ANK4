.class public Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemDataCheckbox.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mChecked:Z

.field private mCheckedImage:Lcom/sec/android/glview/TwGLImage;

.field private mCommandId:I

.field private mUncheckedImage:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFI)V
    .locals 8

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0204d7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0204d6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    sub-float v0, p4, v0

    const/high16 v1, 0x40000000

    div-float v6, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    sub-float v0, p5, v0

    const/high16 v1, 0x40000000

    div-float v7, v0, v1

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFI)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0204d7

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0204d6

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFIZ)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    if-eqz p5, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f02004c

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0204d7

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f0204d6

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_0
.end method

.method private refreshView()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mUncheckedImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mChecked:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->refreshView()V

    goto :goto_0
.end method
