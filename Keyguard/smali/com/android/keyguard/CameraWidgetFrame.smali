.class public Lcom/android/keyguard/CameraWidgetFrame;
.super Lcom/android/keyguard/KeyguardWidgetFrame;
.source "CameraWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;,
        Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private mFakeNavBar:Landroid/view/View;

.field private mFullscreenPreview:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mInsets:Landroid/graphics/Rect;

.field private mLaunchCameraStart:J

.field private final mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTmpLoc:[I

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private mUseFastTransition:Z

.field private final mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p3    # Lcom/android/keyguard/KeyguardActivityLauncher;
    .param p4    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    .param p5    # Landroid/view/View;

    const v3, 0x7f06005e

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    iput-object p3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    iput-object p4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-direct {v1, p1}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new CameraWidgetFrame instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/CameraWidgetFrame;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->render()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/CameraWidgetFrame;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CameraWidgetFrame;)J
    .locals 2
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/CameraWidgetFrame;J)J
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method private cancelTransitionToCamera()V
    .locals 4

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p2    # Lcom/android/keyguard/KeyguardActivityLauncher;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p0, v4}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V

    goto :goto_0
.end method

.method private enableWindowExitAnimation(Z)V
    .locals 8
    .param p1    # Z

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3

    const v1, 0x7f0d0004

    :goto_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v4, :cond_0

    sget-boolean v4, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting windowAnimations to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    iget v0, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "inflateGenericWidgetView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x7f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    sget-boolean v5, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inflateWidgetView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    if-eqz v3, :cond_1

    sget-object v5, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v6, "Error creating camera widget view"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v4

    :catch_0
    move-exception v2

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    goto :goto_0
.end method

.method private instanceId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCameraLaunched()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .locals 9
    .param p1    # Z

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    iput-boolean v6, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long v0, v2, v4

    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v3, "Camera took %sms to launch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-wide v7, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    :cond_2
    return-void
.end method

.method private onSecureCameraActivityStarted()V
    .locals 4

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecureCameraActivityStarted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private recover()V
    .locals 4

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recovering at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method private render()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v13, v14, v15

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    if-ne v14, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    if-ne v14, v1, :cond_1

    sget-boolean v14, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v15, "Already rendered at size=%sx%s %d%%"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/high16 v18, 0x42c80000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleX()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v13, :cond_0

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v13, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v1, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int v12, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    sub-int v11, v14, v15

    int-to-float v14, v12

    int-to-float v15, v13

    div-float v5, v14, v15

    int-to-float v14, v11

    int-to-float v15, v1

    div-float v6, v14, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v14, v13

    mul-float/2addr v14, v4

    float-to-int v9, v14

    int-to-float v14, v1

    mul-float/2addr v14, v4

    float-to-int v3, v14

    if-ge v9, v12, :cond_2

    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    int-to-float v7, v14

    :goto_1
    if-ge v3, v11, :cond_3

    sub-int v14, v11, v3

    div-int/lit8 v14, v14, 0x2

    int-to-float v8, v14

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget v14, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    int-to-float v14, v14

    :goto_4
    invoke-virtual {v15, v14}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v4}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v4}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v2, :cond_6

    const/4 v14, -0x1

    :goto_5
    int-to-float v14, v14

    mul-float/2addr v14, v7

    invoke-virtual {v15, v14}, Landroid/view/View;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v8}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v14, v13, v1}, Landroid/graphics/Point;->set(II)V

    sget-boolean v14, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v15, "Rendered camera widget size=%sx%s %d%% instance=%s"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/high16 v18, 0x42c80000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleX()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v14, 0x1

    goto :goto_5
.end method

.method private rescheduleTransitionToCamera()V
    .locals 6

    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rescheduleTransitionToCamera at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-wide/16 v0, 0x190

    goto :goto_0
.end method

.method private reset()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    return-void
.end method

.method private transitionToCamera()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    if-eqz v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v8, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getScaleY()F

    move-result v13

    mul-float v10, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float v13, v10, v13

    add-float v9, v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreImplementationForTest()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    const v13, 0x7f0b0025

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    :cond_2
    sget-boolean v12, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v12, :cond_3

    sget-object v12, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "root = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-static {v12, v13}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v15

    sub-int/2addr v15, v7

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v7

    int-to-float v3, v12

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float v13, v3, v13

    add-float v2, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F

    move-result v5

    sub-float v6, v9, v2

    move v4, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v5}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    if-gtz v7, :cond_5

    if-lez v8, :cond_7

    :cond_5
    if-lez v7, :cond_8

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-nez v12, :cond_6

    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, -0x1000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_9

    const/4 v12, -0x1

    move v14, v12

    :goto_2
    if-eqz v1, :cond_a

    move v13, v7

    :goto_3
    if-eqz v1, :cond_b

    const/16 v12, 0x57

    :goto_4
    move-object/from16 v0, v16

    invoke-direct {v0, v14, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v13, v7

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v13, v8

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotX(F)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, 0x3f000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v12}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_9
    move v14, v8

    goto :goto_2

    :cond_a
    const/4 v12, -0x1

    move v13, v12

    goto :goto_3

    :cond_b
    const/16 v12, 0x75

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, 0x3f000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    goto :goto_5
.end method


# virtual methods
.method public onActive(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    goto :goto_0
.end method

.method public onBouncerShowing(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFocusLost()V
    .locals 4

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusLost at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onSizeChanged new=%sx%s old=%sx%s at %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p1, p3, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    if-eq p2, p4, :cond_3

    if-lez p4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    return-void
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v4, :cond_1

    sget-boolean v3, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: mTransitioning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    sget-boolean v3, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: below widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    :cond_4
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction observed, not eaten"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;

    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setUseFastTransition(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    return-void
.end method
