.class public Lcom/android/keyguard/sec/KeyguardEffectViewMain;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewMain.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardEffectViewMain$8;,
        Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;,
        Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;
    }
.end annotation


# static fields
.field private static sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;


# instance fields
.field private ENABLE_FESTIVAL:Z

.field private final UNLOCK_EFFECT_VIEW_BACKGROUND:I

.field private final UNLOCK_EFFECT_VIEW_FOREGROUND:I

.field private final mAdminReceiver:Landroid/content/BroadcastReceiver;

.field private mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

.field private mBackgroundRootLayout:Landroid/widget/FrameLayout;

.field private mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

.field private mBackgroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mBgHasAddChargeView:Z

.field private mBootCompleted:Z

.field private mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private final mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyModeStateChanged:Z

.field private mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mForegroundRootLayout:Landroid/widget/FrameLayout;

.field private mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

.field private mForegroundTypeMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mGradationView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsJBPUpgrade:Z

.field private mIsMusicBackground:Z

.field private mIsVisible:Z

.field private mKeyguardHostView:Landroid/widget/FrameLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

.field private mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

.field private mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mUnlockEffectViewMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserSwitching:Z

.field protected mWallpaperPath:Ljava/lang/String;

.field private mWallpaperType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->ENABLE_FESTIVAL:Z

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->UNLOCK_EFFECT_VIEW_FOREGROUND:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->UNLOCK_EFFECT_VIEW_BACKGROUND:I

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsMusicBackground:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBootCompleted:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mEmergencyModeStateChanged:Z

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$2;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$3;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$4;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$5;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsJBPUpgrade:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FESTIVAL_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->ENABLE_FESTIVAL:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->initWallpaperTypes()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperContentObservers()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeygaurdBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleForceSetCircleEffect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChargeStateChange()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperFileObserver()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mEmergencyModeStateChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeBackgroundViewVisibility(Z)V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isFestivalActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "KeyguardEffectViewMain"

    const-string v3, "changeBackgroundViewVisibility set visible"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KeyguardEffectViewMain"

    const-string v3, "changeBackgroundViewVisibility set invisible"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->zoompanning:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    if-eq v1, v3, :cond_0

    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "*** KeyguardEffectView getInstance ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    return-object v0
.end method

.method public static getInstanceIfExists(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "*** KeyguardEffectView getInstanceIfExists ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->sKeyguardBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    return-object v0
.end method

.method public static getScaledBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getScaledBitmapDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleChangeWallpaperType()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "KeyguardEffectViewMain"

    const-string v2, "handleChangeWallpaperType"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForEffect()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperType:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isZoomPanningEffectEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isRichLockWallpaper()Z

    move-result v1

    if-ne v1, v5, :cond_1

    const/16 v1, 0x50

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleFestivalEffect()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->unspecified:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    :goto_1
    return-void

    :cond_2
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperType:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperType:I

    if-ne v1, v6, :cond_0

    :cond_4
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getWallpaperType(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    if-nez v1, :cond_7

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;)V

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_e

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->updateAttributionInfoView()V

    goto/16 :goto_1

    :pswitch_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V

    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;)V

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->seasonal:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isJustLockLiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleChargeStateChange()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FESTIVAL_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->ENABLE_FESTIVAL:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1
.end method

.method private handleFestivalEffect()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FESTIVAL_EFFECT"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->ENABLE_FESTIVAL:Z

    if-eqz v3, :cond_6

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->getFestivalView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eq v3, v1, :cond_2

    const-string v3, "KeyguardFestivalEffect"

    const-string v5, "change festival"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBootCompleted:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, -0x2

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->isUnlockEffectEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->getUnlockEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/16 v3, 0x55

    iput v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setForeground()V

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->lens:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1

    :cond_5
    move v3, v4

    goto/16 :goto_0

    :cond_6
    move v3, v4

    goto/16 :goto_0
.end method

.method private handleForceSetCircleEffect()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mOldForegroundType:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    return-void
.end method

.method private handleUpdateKeygaurdBackground()V
    .locals 3

    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "handleUpdateKeygaurdBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_zoom_panning_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsMusicBackground:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isRichLockWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isCategoriesWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->changeEffectType()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->updateMontblancEffectType()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->setLockScreenWallpaper()V

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->updateAttributionInfoView()V

    goto :goto_0
.end method

.method private initWallpaperTypes()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setDefaultEffectViewTypes()V

    return-void
.end method

.method public static isLockScreenEffect(I)Z
    .locals 2
    .param p0    # I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0x50

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x64

    if-eq p0, v1, :cond_0

    const/16 v1, 0x65

    if-eq p0, v1, :cond_0

    const/16 v1, 0x51

    if-eq p0, v1, :cond_0

    const/16 v1, 0x52

    if-eq p0, v1, :cond_0

    const/16 v1, 0x53

    if-eq p0, v1, :cond_0

    const/16 v1, 0x54

    if-eq p0, v1, :cond_0

    const/16 v1, 0x55

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBackground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;)V
    .locals 3
    .param p1    # Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$8;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Background:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUserSwitching:Z

    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isArcMotionEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-nez v0, :cond_3

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isArcMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->update(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    if-nez v0, :cond_2

    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "Call KeyguardEffectViewRipple for gravity effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-nez v0, :cond_6

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-nez v0, :cond_7

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-nez v0, :cond_8

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    if-nez v0, :cond_9

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBlind;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    if-nez v0, :cond_a

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    if-nez v0, :cond_c

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->settingsForImageType(I)V

    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-nez v0, :cond_e

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    :cond_d
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-nez v0, :cond_f

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-nez v0, :cond_10

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    if-nez v0, :cond_11

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->settingsForImageType(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    if-nez v0, :cond_12

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    if-nez v0, :cond_13

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setBackground()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private makeForeground(Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;)V
    .locals 3
    .param p1    # Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    const/4 v2, 0x0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$8;->$SwitchMap$com$android$keyguard$sec$KeyguardEffectViewMain$Foreground:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setForeground()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/MassTensionUnlockView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setSeasonalUnlockEffect()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setBackground()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FESTIVAL_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->ENABLE_FESTIVAL:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->isChargeState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->getChargeEffectView()Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBgHasAddChargeView:Z

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setDefaultEffectViewTypes()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->ripple:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->lens:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->spring:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->summer:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->autumn:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->winter:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->seasonal:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->particle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->watercolor:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->blind:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->brilliantring:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->brilliantcut:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->massRipple:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->wallpaper:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->massTension:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->justLockLive:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->zoompanning:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->montblanc:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->tilt:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->circle:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->abstracttile:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;->geometricmosaic:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Background;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundTypeMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;->none:Lcom/android/keyguard/sec/KeyguardEffectViewMain$Foreground;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectViewMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setForeground()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private setSeasonalUnlockEffect()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->getCurrentSeason()I

    move-result v0

    :cond_0
    const-string v1, "KeyguardEffectViewMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSeasonalUnlockEffect:  season = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    if-nez v1, :cond_1

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/spring/KeyguardEffectViewSpring;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    if-nez v1, :cond_1

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/summer/KeyguardEffectViewSummer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    if-nez v1, :cond_1

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/autumn/KeyguardEffectViewAutumn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    if-nez v1, :cond_1

    iput-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    new-instance v1, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/festivaleffect/unlockeffect/winter/KeyguardEffectViewWinter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final setWallpaperContentObservers()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v1, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$6;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_ripple_effect"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setWallpaperFileObserver()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAdminReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setWallpaperFileObserver()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$7;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain$7;-><init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0
.end method


# virtual methods
.method public changeEffectType()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "changeEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mEmergencyModeStateChanged:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mEmergencyModeStateChanged:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_set_default_wallpaper"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "keyguard_set_default_wallpaper"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardEffectViewMain"

    const-string v2, "changeEffectType() isTiltEffectEnabled()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->settingsForImageType(I)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isBrilliantCutSpecialTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->settingsForImageType(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->settingsForImageType(I)V

    goto :goto_1
.end method

.method public changeSlidingWallpaper()V
    .locals 0

    return-void
.end method

.method public cleanUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->cleanUp()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public forceSetCircleEffect()V
    .locals 3

    const/16 v2, 0x12f3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    const-string v1, "KeyguardEffectViewMain"

    const-string v2, "start to convert album art"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-gtz v2, :cond_3

    :cond_2
    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v1

    goto :goto_0
.end method

.method public getBackgroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCurrentEffecType()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    return v0
.end method

.method public getDefaultWallpaperTypeForEffect()I
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isEnableOperatorWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "keyguard_default_wallpaper_type_for_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getForegroundLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundRootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getKeyguardHostView(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)Z
    .locals 2
    .param p1    # Landroid/hardware/SensorEvent;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsMusicBackground:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->handleSensorEvent(Landroid/hardware/SensorEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->handleSensorEvent(Landroid/hardware/SensorEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateKeyguardMusicBackground(): bmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsMusicBackground:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->update()V

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->settingsForImageType(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->settingsForImageType(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewWaterColor;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    if-eqz v0, :cond_a

    const-string v0, "KeyguardEffectViewMain"

    const-string v1, "KeyguardEffectViewRipple for gravity effect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getARGB8888Bitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewAbstractTile;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public isCategoriesWallpaper()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    const-string v5, "/data/data/com.samsung.android.keyguardwallpaperupdator/files/wallpaper_images"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iget v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move v1, v2

    :goto_1
    const-string v4, "KeyguardEffectViewMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCategoriesWallpaper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isLiveWallpaper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public isFestivalActivated()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FESTIVAL_EFFECT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->ENABLE_FESTIVAL:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJustLockLiveEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentEffect:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v0, v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMusicBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsMusicBackground:Z

    return v0
.end method

.method public isRichLockWallpaper()Z
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mWallpaperPath:Ljava/lang/String;

    const-string v2, "/data/data/com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "KeyguardEffectViewMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRichLockWallpaper() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isZoomPanningEffectEnabled()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_zoom_panning_effect"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    const-string v4, "KeyguardEffectViewMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isZoomPanningEffectEnabled() isZoomPanningEffect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPowerSavingMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public playLockSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->playLockSound()V

    :cond_0
    return-void
.end method

.method public removeMusicWallpaper()V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->removeMusicWallpaper()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsMusicBackground:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->update()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForEffect()I

    move-result v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantRing;->settingsForImageType(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewTilt;->settingsForImageType(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOff()V

    :cond_3
    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mCurrentVoiceCallChnageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FESTIVAL_EFFECT"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->ENABLE_FESTIVAL:Z

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->isChargeState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mChargeView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->screenTurnedOn()V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mFestivalEffect:Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/festivaleffect/KeyguardFestivalEffect;->pauseAnimation()V

    :cond_5
    return-void
.end method

.method public setAttributionInfoView(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->updateAttributionInfoView()V

    return-void
.end method

.method public setHidden(Z)V
    .locals 3

    const-string v0, "KeyguardEffectViewMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->setHidden(Z)V

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->changeBackgroundViewVisibility(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayerAndBitmapForParticleEffect()V
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v2, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->setLayers(Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;Landroid/widget/FrameLayout;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v3, v3, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v1, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mKeyguardHostView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/KeyguardEffectViewZoomPanning;->setLayers(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public shouldShowAttributionInfoView()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isStrongPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isCategoriesWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isJustLockLiveEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->show()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mIsVisible:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->changeBackgroundViewVisibility(Z)V

    return-void
.end method

.method public showGradation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->isClockTop()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->isMissedEventTop()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    const/high16 v1, 0x26000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mGradationView:Landroid/widget/ImageView;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 1
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mUnlockEffectView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mForegroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->update()V

    :cond_1
    return-void
.end method

.method public updateAttributionInfoView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mAttributionInfoView:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->update()V

    goto :goto_0
.end method

.method public updateMontblancEffectType()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    instance-of v1, v1, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_montblanc_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->mBackgroundView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewIndigoDiffusion;->settingsForImageType(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method
