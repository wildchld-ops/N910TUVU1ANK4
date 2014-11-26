.class public Lcom/android/keyguard/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;,
        Lcom/android/keyguard/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sWasKnoxEnabled:Z


# instance fields
.field private mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedsInput:Z

.field private mPanelOrientation:I

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field mStateContainer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportBitmapEnabled:Z

.field private final mViewManager:Landroid/view/ViewManager;

.field private final mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardViewManager;->sWasKnoxEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewManager;
    .param p3    # Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .param p4    # Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z

    iput v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mPanelOrientation:I

    new-instance v0, Lcom/android/keyguard/KeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewManager$1;-><init>(Lcom/android/keyguard/KeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "persist.panel.orientation"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mPanelOrientation:I

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardViewManager;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardViewManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardViewManager;->sWasKnoxEnabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/keyguard/KeyguardViewManager;->sWasKnoxEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardViewManager;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;
    .param p1    # Z
    .param p2    # Z
    .param p3    # Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardViewManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method private inflateKeyguardView(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;

    const v10, 0x7f0b0025

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v5, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "securityModel.getSecurityMode() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->widgetsDisabled()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v5, :cond_2

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v5, :cond_5

    :cond_2
    const v5, 0x7f030056

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    :goto_0
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardHostView;

    iput-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardViewBase;->setViewMediatorCallback(Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p1, :cond_8

    const-string v5, "is_switching_user"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/android/keyguard/KeyguardHostView;->initializeSwitchingUserState(Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const-string v5, "showappwidget"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardHostView;->goToWidget(I)V

    :cond_4
    return-void

    :cond_5
    const v5, 0x7f030016

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v5, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseCustomWidget()Z

    move-result v5

    if-ne v5, v6, :cond_7

    const/high16 v5, 0x7f030000

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_7
    const v5, 0x7f030057

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_8
    move v5, v7

    goto :goto_1
.end method

.method private isWidgetEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    .locals 10
    .param p1    # Z
    .param p2    # Z
    .param p3    # Landroid/os/Bundle;

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "keyguard host is null, creating it..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const v4, 0x10900

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x100000

    or-int/2addr v4, v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    if-nez v2, :cond_2

    const/high16 v2, 0x20000

    or-int/2addr v4, v2

    :cond_2
    const/4 v7, -0x1

    const/16 v8, 0x7d4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :goto_0
    const v2, 0x7f0d0004

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz p1, :cond_a

    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Rotation sensor for lock screen On!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v9, :cond_8

    :goto_1
    if-eqz v6, :cond_9

    const/4 v2, 0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_2
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    const-string v2, "Keyguard"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v2, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;-><init>(Lcom/android/keyguard/KeyguardViewManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getForegroundLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getKeyguardHostView(Landroid/widget/FrameLayout;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_4
    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0, p3}, Lcom/android/keyguard/KeyguardViewManager;->inflateKeyguardView(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void

    :cond_7
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_9
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto/16 :goto_2

    :cond_a
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Rotation sensor for lock screen Off!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto/16 :goto_2
.end method

.method private maybeEnableScreenRotation(Z)V
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen On!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen Off!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private shouldEnableTranslucentDecor()Z
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardHostView;->getUserActivityTimeout()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v6, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "intelligent_sleep_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_6

    move v5, v8

    :goto_1
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "psm_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "powersaving_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v8, :cond_2

    :cond_1
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ultra_powersaving_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v8, :cond_2

    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "emergency_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_7

    :cond_2
    move v4, v8

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v4, :cond_3

    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "isLowLevel"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_8

    move v3, v8

    :goto_3
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "psm_auto_turn_on"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_9

    move v2, v8

    :goto_4
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    const/4 v4, 0x0

    :cond_3
    const-wide/16 v0, 0x2710

    iget-object v9, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderOpened(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    const-wide/16 v0, 0x1388

    :goto_5
    if-ne v4, v8, :cond_4

    const-wide/16 v8, 0xbb8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/sec/KeyguardProperties;->isEnabledLiveDemoMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/32 v0, 0x927c0

    :cond_5
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_c

    sget-object v8, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v9, "mWindowLayoutParams is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v5, v9

    goto/16 :goto_1

    :cond_7
    move v4, v9

    goto :goto_2

    :cond_8
    move v3, v9

    goto :goto_3

    :cond_9
    move v2, v9

    goto :goto_4

    :cond_a
    if-ne v5, v8, :cond_b

    const-wide/16 v9, 0x1388

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_5

    :cond_c
    sget-object v8, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v9, "mWindowLayoutParams not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v8, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    goto/16 :goto_0
.end method

.method private widgetsDisabled()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v4

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_3

    move v1, v6

    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->isWidgetEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    move v3, v6

    :goto_1
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v7, v6

    :cond_2
    return v7

    :cond_3
    move v1, v7

    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss()V
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

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->dispatch(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected getWindowDisplayTimeout()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-wide v0, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized hide()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/keyguard/KeyguardViewManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardViewManager$3;-><init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/keyguard/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->cleanUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected isKeyguardEverMade()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSimLockMode()Z
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchActivityBended(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1    # Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->launchActivityBended(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public launchCamera()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->launchCamera()V

    :cond_0
    return-void
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onScreenTurnedOff()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->screenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 5
    .param p1    # Lcom/android/internal/policy/IKeyguardShowCallback;

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "onScreenTurnedOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send wm null token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_4

    const-string v2, "host was null"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->onScreenTurnedOn()V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/keyguard/KeyguardViewManager$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/keyguard/KeyguardViewManager$2;-><init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->screenTurnedOn()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->showUnlockAffordance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v2, "not showing"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling onShown():"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_6
    if-eqz p1, :cond_1

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling onShown():"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized reset(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->reset()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHKFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .locals 4
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized show(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show(); mKeyguardView=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->updateConfiguration()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    iget v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mPanelOrientation:I

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewManager;->maybeEnableScreenRotation(Z)V

    const/high16 v1, 0x2200000

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableTranslucentDecor()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0xc000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:setSystemUiVisibility("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x7f0d0004

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "show:change window transition animation "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->show()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showAssistant()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->showAssistant()V

    :cond_0
    return-void
.end method

.method updateShowWallpaper(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateUserActivityTimeout()V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "verifyUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
