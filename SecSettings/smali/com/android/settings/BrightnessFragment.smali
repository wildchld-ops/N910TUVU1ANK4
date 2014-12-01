.class public Lcom/android/settings/BrightnessFragment;
.super Landroid/app/DialogFragment;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# static fields
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static brightnessSetting:Lcom/android/settings/BrightnessFragment;

.field private static mContext:Landroid/content/Context;


# instance fields
.field brightnessModeLayout:Landroid/view/View;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxButton:Landroid/widget/TextView;

.field private mCurBrightness:I

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mOldBrightness_DB:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessMaximum:I

.field private mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView:Landroid/widget/TextView;

.field private mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSeekBarLayout:Landroid/widget/LinearLayout;

.field private mTwSeekBarText:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field private supportAutoBrightnessDetail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    new-instance v0, Lcom/android/settings/BrightnessFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$1;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/BrightnessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$2;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/BrightnessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$3;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private BtoR(I)I
    .locals 3

    iget v1, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    sub-int v1, p1, v1

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    rsub-int v2, v2, 0xff

    div-int v0, v1, v2

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/BrightnessFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/BrightnessFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/BrightnessFragment;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/BrightnessFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/BrightnessFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->restoreOldState()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/high16 v2, 0x3f800000

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000

    div-float v0, v2, v3

    :goto_0
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    :cond_0
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    if-gez v2, :cond_1

    sget-object v2, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    :goto_1
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3

    move v0, p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initializeView(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v0, "BrightnessFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessFragment;->BtoR(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    if-nez v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3
.end method

.method private static isDualFolderType(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFolderOpen(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "off"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigAutomaticBrightnessDetail"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/settings/BrightnessFragment;
    .locals 1

    sget-object v0, Lcom/android/settings/BrightnessFragment;->brightnessSetting:Lcom/android/settings/BrightnessFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/BrightnessFragment;

    invoke-direct {v0}, Lcom/android/settings/BrightnessFragment;-><init>()V

    sput-object v0, Lcom/android/settings/BrightnessFragment;->brightnessSetting:Lcom/android/settings/BrightnessFragment;

    :cond_0
    sput-object p0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/BrightnessFragment;->brightnessSetting:Lcom/android/settings/BrightnessFragment;

    return-object v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 6

    sget-object v3, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0x14

    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    move v1, v2

    const-string v0, ""

    add-int/lit8 v3, v1, -0x5

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "BrightnessFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBrightnessModeChanged :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private restoreOldState()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessFragment;->setMode(I)V

    :cond_1
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness_DB:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 8

    const v7, 0x461c4000

    const-string v4, "BrightnessFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set brightness passed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    int-to-float v4, p1

    const/high16 v5, 0x40000000

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    const/high16 v5, 0x3f800000

    sub-float v3, v4, v5

    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v4, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v4, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    sub-int v1, v4, v5

    mul-int v4, p1, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    add-int p1, v4, v5

    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    :cond_3
    if-eqz p2, :cond_4

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    sget-object v4, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    const-string v0, "BrightnessFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->restoreOldState()V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessFragment;->setMode(I)V

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v8, 0x64

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "sensor"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    iput-boolean v9, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v6, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->isSupportAutoBrightnessDetail()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    iget v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness_DB:I

    const-string v6, "BrightnessFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "On create Brightness  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v9}, Lcom/android/settings/BrightnessFragment;->setShowsDialog(Z)V

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/BrightnessFragment;->setStyle(II)V

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_brightness_detail"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v10, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f04003b

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00c1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-boolean v5, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00c2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00c4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v8}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v5, "BrightnessFragment"

    const-string v6, "isFolderClose "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00c5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_brightness_detail"

    const/16 v7, 0x64

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    div-int/lit8 v5, v5, 0x14

    add-int/lit8 v1, v5, -0x5

    const-string v4, ""

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    add-int/lit8 v6, v1, 0x5

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    if-lez v1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00bd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    new-instance v6, Lcom/android/settings/BrightnessFragment$4;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$4;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    invoke-virtual {p0, v5}, Lcom/android/settings/BrightnessFragment;->returnMaxBrightness(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b00c6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/settings/BrightnessFragment;->initializeView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090630

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/BrightnessFragment$5;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$5;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/BrightnessFragment$6;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$6;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :cond_4
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 5

    const-string v2, "BrightnessFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTwSeekBarSplitProgressChanged progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    add-int/lit8 v2, p2, -0x5

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    mul-int/lit8 v1, p2, 0x14

    new-instance v2, Lcom/android/settings/BrightnessFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/BrightnessFragment$7;-><init>(Lcom/android/settings/BrightnessFragment;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0

    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method
