.class public Lcom/android/keyguard/sec/KeyguardUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;,
        Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private isIgnoreTouch:Z

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAttributionView:Landroid/view/View;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerFrameView:Landroid/view/View;

.field private mBouncerHelpText:Landroid/widget/TextView;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

.field private mClearCoverOpened:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContextualEventManagerCallback:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

.field private mDefaultHelpText:Ljava/lang/String;

.field private mDistance:D

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeView:Landroid/view/View;

.field private mFirstBorder:I

.field private final mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsAirViewEnabled:Z

.field private mIsBouncing:Z

.field private mIsCameraShortCut:Z

.field private mIsFoundBigUnlockFrame:Z

.field private mIsHelpTextEnabled:Z

.field private mIsKeyguardDismissing:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultiTouch:Z

.field private mIsScreenOn:Z

.field private mIsSensorRegistered:Z

.field private mIsShowInformation:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsUnlockStarted:Z

.field private mIsVoiceUnlockFailed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResumedTimeMillis:J

.field private mSecCameraArrow:Landroid/widget/ImageView;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecondBorder:I

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

.field private mStartX:F

.field private mStartY:F

.field private mTextChageHandler:Landroid/os/Handler;

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mUsingWakeUpCommand:Z

.field private mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

.field private mVoiceHelpTextView:Landroid/widget/TextView;

.field private mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsFoundBigUnlockFrame:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->FADE_IN_OUT_ANIMATION_DURATION:I

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsShowInformation:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAccelerometerSensor:Landroid/hardware/Sensor;

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsSensorRegistered:Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsScreenOn:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContextualEventManagerCallback:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$13;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$13;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$14;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$14;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_1

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$5;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "touch_exploration_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->checkWakeUpCommandCondition()V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-void

    :cond_1
    const-string v1, "SecuritySelectorView"

    const-string v2, "explore by touch mode off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->dismissKeyguard()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->handleChangeTouchExploration()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsShowInformation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardUnlockView;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/KeyguardUnlockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardUnlockView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/KeyguardUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mTextChageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkWakeUpCommandCondition()V
    .locals 6

    const/4 v5, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wake_up_lock_screen"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v1

    :goto_2
    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enabled_accessibility_services"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "driving_mode_on"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v0, v2, :cond_3

    if-ne v3, v2, :cond_3

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    const-string v0, "SecuritySelectorView"

    const-string v3, "package not found"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private dismissKeyguard()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method private findBigUnlockView()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsFoundBigUnlockFrame:Z

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsFoundBigUnlockFrame:Z

    goto :goto_0
.end method

.method private handleChangeTouchExploration()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "touch_exploration_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    const-string v0, "SecuritySelectorView"

    const-string v1, "[handleChangeTouchExploration]explore by touch mode on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->checkWakeUpCommandCondition()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    const-string v0, "SecuritySelectorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleChangeTouchExploration] mDefaultHelpText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    const-string v0, "SecuritySelectorView"

    const-string v1, "[handleChangeTouchExploration]explore by touch mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 8

    const-wide/16 v6, 0x4e20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    long-to-int v5, v0

    rsub-int v5, v5, 0x7530

    int-to-long v5, v5

    invoke-interface {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0
.end method

.method private refreshDefaultHelpText()V
    .locals 2

    const v1, 0x7f0600ac

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private registerSensorListener()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getCurrentEffecType()I

    move-result v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isMusicBackground()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForEffect()I

    move-result v0

    if-eq v0, v4, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsSensorRegistered:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    const-string v0, "SecuritySelectorView"

    const-string v1, "registerSensorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsSensorRegistered:Z

    :cond_2
    return-void
.end method

.method private unregisterSensorListener()V
    .locals 3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getCurrentEffecType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getDefaultWallpaperTypeForEffect()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsSensorRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    const-string v0, "SecuritySelectorView"

    const-string v1, "unregisterSensorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsSensorRegistered:Z

    :cond_2
    return-void
.end method


# virtual methods
.method varargs doTransition(F[Landroid/view/View;)V
    .locals 5
    .param p1    # F
    .param p2    # [Landroid/view/View;

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hideBouncer(I)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "SecuritySelectorView"

    const-string v1, "hideBouncer mBouncerHelpText != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_shortcuts_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v5, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v5}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findBigUnlockView()V

    return-void

    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContextualEventManagerCallback:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->cleanUp()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->cleanUp()V

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEventManagerCallback()V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->unregisterSensorListener()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsScreenOn:Z

    :cond_4
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SecuritySelectorView"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, -0x2

    const/16 v12, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const v7, 0x7f0b0064

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0600ac

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    const v7, 0x7f0b0065

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    const v7, 0x7f0b0061

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/EmergencyButton;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v7, 0x7f0b0100

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/keyguard/KeyguardHostView;->mHelpTextView:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/keyguard/KeyguardHostView;->mVoiceHelpTextView:Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v7, 0x7f0b0101

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/sec/KeyguardShortcutView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setHelpTextCallback(Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V

    :cond_3
    const v7, 0x7f0b0045

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    const v7, 0x7f0b00c9

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "set_shortcuts_mode"

    invoke-static {v7, v10, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eq v4, v9, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    const v10, 0x7f040004

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecCameraShortcut;->setCameraArrowAnimView(Landroid/widget/ImageView;)V

    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v7, v10}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v9}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->refreshDefaultHelpText()V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "easy_mode_switch"

    invoke-static {v7, v10, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_13

    move v2, v8

    :goto_0
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "emergency_mode"

    invoke-static {v7, v10, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_14

    move v3, v9

    :goto_1
    if-nez v2, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41b80000

    invoke-virtual {v7, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_c
    if-nez v2, :cond_e

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-nez v7, :cond_d

    new-instance v7, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;

    invoke-direct {v7, v10, v11}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;-><init>(Landroid/content/Context;Lcom/android/keyguard/sec/KeyguardUnlockView$WakeUpCommandCallback;)V

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    :cond_d
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :cond_e
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "unlock_text"

    invoke-static {v7, v10, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_15

    move v7, v9

    :goto_2
    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_show_info"

    invoke-static {v7, v10, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_16

    move v7, v9

    :goto_3
    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsShowInformation:Z

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_17

    iget-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    if-eqz v7, :cond_17

    iget-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsShowInformation:Z

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    new-instance v10, Lcom/android/keyguard/sec/KeyguardUnlockView$6;

    invoke-direct {v10, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_f
    :goto_4
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_19

    iget-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsHelpTextEnabled:Z

    if-eqz v7, :cond_19

    iget-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsShowInformation:Z

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    new-instance v10, Lcom/android/keyguard/sec/KeyguardUnlockView$7;

    invoke-direct {v10, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    :goto_5
    const v7, 0x7f0b00ac

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_11

    new-instance v7, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    :cond_11
    const v7, 0x7f0b00fd

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "finger_air_view"

    invoke-static {v7, v10, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_1b

    move v7, v9

    :goto_6
    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    const-string v7, "SecuritySelectorView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsAirViewEnabled ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsAirViewEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUsingWakeUpCommand:Z

    if-eqz v7, :cond_12

    :try_start_0
    const-string v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/IWindowManager;->isCoverOpen()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_12
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "lock_motion_tilt_to_unlock"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_1c

    move v7, v9

    :goto_8
    iput-boolean v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMotionLockscreen:Z

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "motion_unlock_camera_short_cut"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_1d

    :goto_9
    iput-boolean v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsCameraShortCut:Z

    return-void

    :cond_13
    move v2, v9

    goto/16 :goto_0

    :cond_14
    move v3, v8

    goto/16 :goto_1

    :cond_15
    move v7, v8

    goto/16 :goto_2

    :cond_16
    move v7, v8

    goto/16 :goto_3

    :cond_17
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_18
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_19
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1a
    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1b
    move v7, v8

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const-string v7, "SecuritySelectorView"

    const-string v10, "IWindowManager RemoteException"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1c
    move v7, v8

    goto :goto_8

    :cond_1d
    move v9, v8

    goto :goto_9
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->onPause()V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->unregisterSensorListener()V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsScreenOn:Z

    :cond_4
    return-void
.end method

.method public onResume(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsKeyguardDismissing:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    :cond_0
    if-ne p1, v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mResumedTimeMillis:J

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->registerSensorListener()V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsScreenOn:Z

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->onResume()V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/MotionEvent;

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v6}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v6

    const-wide/16 v8, 0x385

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v7, 0x0

    invoke-interface {v6, v7, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v7, 0x0

    invoke-interface {v6, v7, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    const-string v6, "SecuritySelectorView"

    const-string v7, "mIsMultiTouch true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartX:F

    iput v5, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartY:F

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->registerListener()V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    const-string v6, "SecuritySelectorView"

    const-string v7, "mIsMultiTouch false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->pokeWakelockWithTimeCheck()V

    :cond_5
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartX:F

    sub-float v6, v4, v6

    float-to-int v0, v6

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mStartY:F

    sub-float v6, v5, v6

    float-to-int v1, v6

    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v7, 0x0

    invoke-interface {v6, v7, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/keyguard/sec/KeyguardUnlockView$8;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$8;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->isIgnoreTouch:Z

    :cond_6
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_7

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    const-string v6, "SecuritySelectorView"

    const-string v7, "mIsMultiTouch false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/high16 v6, 0x3f800000

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_8

    iget-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v7, 0x0

    invoke-interface {v6, v7, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v6, :cond_8

    new-instance v6, Lcom/android/keyguard/sec/KeyguardUnlockView$9;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$9;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->unregisterListener()V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    goto/16 :goto_1

    :cond_9
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    goto :goto_3

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_a

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    const-string v6, "SecuritySelectorView"

    const-string v7, "mIsMultiTouch false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/high16 v6, 0x3f800000

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardUnlockView;->doTransition(F[Landroid/view/View;)V

    sget-boolean v6, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "SecuritySelectorView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP mDistance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFirstBorder:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_c

    iget-wide v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mDistance:D

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecondBorder:I

    int-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_c

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMultiTouch:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const/4 v7, 0x0

    invoke-interface {v6, v7, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsUnlockStarted:Z

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v6, :cond_c

    new-instance v6, Lcom/android/keyguard/sec/KeyguardUnlockView$10;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$10;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v7}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->unregisterListener()V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/keyguard/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1    # Z

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardUnlockView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "SecuritySelectorView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_4

    const-string v0, "focused"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsScreenOn:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->registerSensorListener()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINRequestWithSlot(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v0, "unfocused"

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTiltEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->unregisterSensorListener()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setAttributionInfoView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mAttributionView:Landroid/view/View;

    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$11;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardUnlockView$12;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardUnlockView$12;-><init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 3
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsCameraShortCut:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/keyguard/sec/CircleLockScreenMotion;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCircleLockScreenMotion:Lcom/android/keyguard/sec/CircleLockScreenMotion;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_4
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1    # Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x4

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->findBigUnlockView()V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsBouncing:Z

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_shortcuts_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mShortcutView:Lcom/android/keyguard/sec/KeyguardShortcutView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrameView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeView:Landroid/view/View;

    invoke-static {v1, v2, v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->startAnimationView(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v0, "SecuritySelectorView"

    const-string v1, "showBouncer mBouncerHelpText != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    const v1, 0x7f0600ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mBouncerHelpText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showUnlockAffordance()V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    const-string v2, "SecuritySelectorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SecuritySelectorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidRect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method
