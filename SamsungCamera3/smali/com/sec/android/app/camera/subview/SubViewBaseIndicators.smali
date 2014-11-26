.class public Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;
.super Lcom/sec/android/app/camera/subview/SubViewBase;
.source "SubViewBaseIndicators.java"


# static fields
.field private static final INDICATOR_ORDER:[I

.field private static final INDICATOR_REMAINCOUNT_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SubViewBaseInicators"

.field private static final VISIBLE_REMAIN_COUNT:I = 0x12c

.field private static mIndicatorMarginBottom:I

.field private static mIndicatorMarginLeft:I

.field private static mIndicatorSpace:I

.field private static mIndicatorWidth:I


# instance fields
.field private mAutoNightDetectionIndicator:Landroid/widget/ImageView;

.field private mBatteryIndicator:Landroid/widget/ImageView;

.field private mFlashIndicator:Landroid/widget/ImageView;

.field private mGPSIndicator:Landroid/widget/ImageView;

.field private mIndexResetOrder:I

.field private mRecordingModeIndicator:Landroid/widget/ImageView;

.field private mRemainCountIndicator:Landroid/widget/TextView;

.field private mStorageIndicator:Landroid/widget/ImageView;

.field private mTimerIndicator:Landroid/widget/ImageView;

.field private mVoiceIndicator:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorMarginLeft:I

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorMarginBottom:I

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorWidth:I

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorSpace:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->INDICATOR_ORDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f0053
        0x7f0f0058
        0x7f0f0054
        0x7f0f0055
        0x7f0f0056
        0x7f0f0057
        0x7f0f0059
        0x7f0f005a
        0x7f0f005b
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # Lcom/sec/android/app/camera/subview/SubViewManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mStorageIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mGPSIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRemainCountIndicator:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->initialize()V

    return-void
.end method

.method private reOrder()V
    .locals 5

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->INDICATOR_ORDER:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget-object v3, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->INDICATOR_ORDER:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRemainCountIndicator:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setOrder(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v4}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setOrder(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method private setOrder(Landroid/view/View;Z)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget v2, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorMarginLeft:I

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    sget v4, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorWidth:I

    sget v5, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int v0, v2, v3

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x3

    :cond_0
    int-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    return-void

    :cond_1
    sget v2, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorMarginBottom:I

    rsub-int v2, v2, 0x438

    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorWidth:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    sget v5, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorSpace:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, -0x3

    :cond_2
    int-to-float v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public handleDimButtons()V
    .locals 0

    return-void
.end method

.method public hideCameraBaseIndicator()V
    .locals 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndexResetOrder:I

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->INDICATOR_ORDER:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget-object v3, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->INDICATOR_ORDER:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0
.end method

.method public initLayout()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f0053

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f0058

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mStorageIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f0059

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mGPSIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f0057

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f005b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRemainCountIndicator:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a040c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorMarginLeft:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorMarginBottom:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0410

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorWidth:I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0411

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mIndicatorSpace:I

    return-void
.end method

.method public initialize()V
    .locals 2

    const-string v0, "SubViewBaseInicators"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->initLayout()V

    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setFlashIndicator(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setTimerIndicator(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setStorageIndicator(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setGPSIndicator(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setRecordingModeIndicator(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->showVoiceInputIndicator(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setVoiceStatus(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_0

    :sswitch_6
    if-ne p2, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setLowlightIndicator(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x14 -> :sswitch_3
        0x16 -> :sswitch_2
        0x47 -> :sswitch_5
        0x57 -> :sswitch_6
        0xbb8 -> :sswitch_4
    .end sparse-switch
.end method

.method public rotateLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->initLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    return-void
.end method

.method public setBatteryLevel(IZ)V
    .locals 4
    .param p1    # I
    .param p2    # Z

    const/16 v3, 0x10

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0204c0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0204bd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_3

    if-ge p1, v3, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0204be

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-lt p1, v3, :cond_4

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0204bf

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mBatteryIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setFlashIndicator(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020403

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020402

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020404

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mFlashIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setGPSIndicator(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mGPSIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mGPSIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mGPSIndicator:Landroid/widget/ImageView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mGPSIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setLowlightIndicator(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020406

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRecordingModeIndicator(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020409

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020408

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02040a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020407

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRecordingModeIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRemainCountIndicator(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRemainCountIndicator:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRemainCountIndicator:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRemainCountIndicator:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mRemainCountIndicator:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setStorageIndicator(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mStorageIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mStorageIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mStorageIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02040d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mStorageIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setTimerIndicator(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020410

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020411

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02040f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mTimerIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVoiceStatus(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020412

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020414

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCameraBaseIndicator()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getBatteryLevel()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isBatteryCharging()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setBatteryLevel(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFlashMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setFlashIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setTimerIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setStorageIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setGPSIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setRecordingModeIndicator(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->isKNOXMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->showVoiceInputIndicator(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setVoiceStatus(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isDualBackCamera()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mAutoNightDetectionIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isLowLightDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setLowlightIndicator(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setLowlightIndicator(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setLowlightIndicator(I)V

    goto :goto_1
.end method

.method public showVoiceInputIndicator(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->reOrder()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->mVoiceIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
