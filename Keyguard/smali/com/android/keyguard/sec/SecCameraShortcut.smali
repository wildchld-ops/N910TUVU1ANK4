.class public Lcom/android/keyguard/sec/SecCameraShortcut;
.super Landroid/widget/FrameLayout;
.source "SecCameraShortcut.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCameraButton:Landroid/widget/ImageView;

.field private mCurrentOrientation:F

.field private mDistance:D

.field private mFirstBorder:I

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsFirst:Z

.field private mIsLandscapeAvailable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSecCameraArrow:Landroid/widget/ImageView;

.field private mSecondBorder:I

.field private mShortcutSetting:I

.field private mStartX:F

.field private mStartY:F

.field private mStopAnimation:Z

.field private mTouchDown:Z

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mTouchDown:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStopAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mTouchDown:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStopAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SecCameraShortcut"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mTouchDown:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStopAnimation:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecCameraShortcut;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecCameraShortcut;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecCameraShortcut;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecCameraShortcut;

    iget v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mShortcutSetting:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecCameraShortcut;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecCameraShortcut;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setShortCutImageResource(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecCameraShortcut;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    return v0
.end method

.method private getUnlockDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->getUnlockDelay()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v0

    goto :goto_0
.end method

.method private handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private isLandscapeLayoutAvailable()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->shouldEnableScreenRotation()Z

    move-result v0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private setShortCutImageResource(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mShortcutSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mShortcutSetting:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f0202b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f0202b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    const v1, 0x7f0202b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private shouldEnableScreenRotation()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

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


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->isLandscapeLayoutAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsLandscapeAvailable:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/SecCameraShortcut$3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut$3;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mFirstBorder:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_shortcuts_mode"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mShortcutSetting:I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortcutSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mShortcutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/SecCameraShortcut;->setShortCutImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f06005e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0600ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v1, 0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mTouchDown:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->reset()V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStopAnimation:Z

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v8, "touched"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v7, 0x1

    :goto_1
    return v7

    :pswitch_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_2
    const-string v7, "ShortcutWidget"

    invoke-virtual {p0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p0, p1}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v7, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v8, "action down"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mTouchDown:Z

    iput v3, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartX:F

    iput v4, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartY:F

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/SecCameraShortcut;->setShortCutImageResource(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_3
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/SecCameraShortcut;->setShortCutImageResource(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_4
    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action up/cancel mDistance: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mTouchDown:Z

    iget v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mFirstBorder:I

    int-to-double v7, v7

    iget-wide v9, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    cmpg-double v7, v7, v9

    if-gez v7, :cond_2

    iget-wide v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    iget v9, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    int-to-double v9, v9

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_3

    :cond_2
    iget-wide v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    iget v9, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    int-to-double v9, v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_4

    :cond_3
    invoke-direct {p0, p0, p1}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    new-instance v7, Lcom/android/keyguard/sec/SecCameraShortcut$1;

    invoke-direct {v7, p0}, Lcom/android/keyguard/sec/SecCameraShortcut$1;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getUnlockDelay()J

    move-result-wide v8

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/SecCameraShortcut;->setShortCutImageResource(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    if-eqz v7, :cond_6

    :cond_6
    iget-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStopAnimation:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStopAnimation:Z

    const/4 v7, 0x1

    goto/16 :goto_1

    :pswitch_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v6, v7, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v5

    sub-float/2addr v7, v8

    float-to-int v1, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v6

    sub-float/2addr v7, v8

    float-to-int v2, v7

    iget v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartX:F

    sub-float v7, v3, v7

    float-to-int v1, v7

    iget v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mStartY:F

    sub-float v7, v4, v7

    float-to-int v2, v7

    int-to-double v7, v1

    const-wide/high16 v9, 0x4000000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    int-to-double v9, v2

    const-wide/high16 v11, 0x4000000000000000L

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    iget-object v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_MOVE mDistance: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    iget v9, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecondBorder:I

    int-to-double v9, v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_7

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mIsFirst:Z

    invoke-direct {p0, p0, p1}, Lcom/android/keyguard/sec/SecCameraShortcut;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    new-instance v7, Lcom/android/keyguard/sec/SecCameraShortcut$2;

    invoke-direct {v7, p0}, Lcom/android/keyguard/sec/SecCameraShortcut$2;-><init>(Lcom/android/keyguard/sec/SecCameraShortcut;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecCameraShortcut;->getUnlockDelay()J

    move-result-wide v8

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    iget-wide v9, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mDistance:D

    cmpg-double v7, v7, v9

    if-gez v7, :cond_8

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/SecCameraShortcut;->setShortCutImageResource(I)V

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/SecCameraShortcut;->setShortCutImageResource(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method protected rotateIcon(I)V
    .locals 6
    .param p1    # I

    const/high16 v5, 0x43870000

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v2

    if-nez v2, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    int-to-float v1, p1

    cmpl-float v2, v0, v4

    if-nez v2, :cond_4

    cmpl-float v2, v1, v5

    if-nez v2, :cond_4

    const/high16 v0, 0x43b40000

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x43340000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    int-to-float v2, p1

    iput v2, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCurrentOrientation:F

    :cond_3
    return-void

    :cond_4
    cmpl-float v2, v0, v5

    if-nez v2, :cond_0

    cmpl-float v2, v1, v4

    if-nez v2, :cond_0

    const/high16 v1, 0x43b40000

    goto :goto_0
.end method

.method public setAdditionalUnlockView(Lcom/android/keyguard/sec/KeyguardEffectViewNone;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    return-void
.end method

.method public setCameraArrowAnimView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mSecCameraArrow:Landroid/widget/ImageView;

    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 2
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "setCallback(): null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecCameraShortcut;->TAG:Ljava/lang/String;

    const-string v1, "setCallback(): not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
