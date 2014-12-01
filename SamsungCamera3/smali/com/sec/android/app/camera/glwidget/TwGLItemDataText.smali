.class public Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemDataText.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field public static final BLUE_TEXT_COLOR:I

.field private static final DATA_FONT_SIZE:F

.field private static final TAG:Ljava/lang/String; = "TwGLItemDataText"

.field public static final WHITE_TEXT_COLOR:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b0049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->DATA_FONT_SIZE:F

    const v0, 0x7f09000a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->WHITE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFI)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFI)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->refreshView()V

    return-void
.end method

.method private refreshView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    :cond_2
    return-void
.end method

.method private updateText(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    const-string v0, "TwGLItemDataText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method protected getView()Lcom/sec/android/glview/TwGLView;
    .locals 13

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v0, "TwGLItemDataText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v6, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->DATA_FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->BLUE_TEXT_COLOR:I

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mCommandId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "TwGLItemDataText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing resource for CommandID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->updateText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAlign(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    :cond_0
    return-void
.end method
