.class public Lcom/android/keyguard/sec/SecEmergencyCircleView;
.super Landroid/widget/FrameLayout;
.source "SecEmergencyCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecEmergencyCircleView$DuosPhoneStateListener;
    }
.end annotation


# instance fields
.field private isIgnoreTouch:Z

.field private mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mCurrentOrientation:F

.field private mCurrentVisibility:I

.field private mDistance:D

.field private mEmergencyCallButton:Landroid/widget/ImageView;

.field private mEmergencyTextView:Landroid/widget/TextView;

.field private mFirstBorder:I

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsCallStateOffHook:Z

.field private mIsFirst:Z

.field private mIsLandscapeAvailable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

.field private mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPasswordEntryView:Landroid/widget/TextView;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSecondBorder:I

.field private mServiceState:I

.field private mServiceState2:I

.field private mStartX:F

.field private mStartY:F

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsFirst:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->isIgnoreTouch:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mDistance:D

    iput-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    iput-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsCallStateOffHook:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mCurrentOrientation:F

    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsLandscapeAvailable:Z

    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView$1;-><init>(Lcom/android/keyguard/sec/SecEmergencyCircleView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private VoIPIsInUse()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    const-string v3, "SecEmergencyCircleView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bVoIP_InUse = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    const-string v3, "SecEmergencyCircleView"

    const-string v4, "VoIPIsInUse() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecEmergencyCircleView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyCircleView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecEmergencyCircleView;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyCircleView;
    .param p1    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecEmergencyCircleView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyCircleView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecEmergencyCircleView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyCircleView;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsLandscapeAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/SecEmergencyCircleView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyCircleView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/SecEmergencyCircleView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->updateCurrentView()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/SecEmergencyCircleView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecEmergencyCircleView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    return p1
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v0, :cond_0

    const-string v0, "SecEmergencyCircleView"

    const-string v1, "mAdditionalUnlockView != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->reset()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecEmergencyCircleView"

    const-string v1, "mAdditionalUnlockView == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private isLandscapeLayoutAvailable()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->shouldEnableScreenRotation()Z

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

.method private launchEmergencyDialler()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setShortCutImageResource(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v0, "SecEmergencyCircleView"

    const-string v1, "setShortCutImageResource() mEmergencyCallButton is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsCallStateOffHook:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040583

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    nop

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

.method private updateCurrentView()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v0, "SecEmergencyCircleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentView() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mCurrentVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SecEmergencyCircleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMCC :: serviceState1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SecEmergencyCircleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMCC :: serviceState2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-ne v0, v4, :cond_5

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    if-ne v0, v4, :cond_5

    :cond_1
    const-string v0, "test"

    const-string v1, "view to gone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "SecEmergencyCircleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMCC :: serviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-ne v0, v4, :cond_5

    :cond_4
    const-string v0, "test"

    const-string v1, "view to gone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mCurrentVisibility:I

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2    # I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsCallStateOffHook:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040583

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsCallStateOffHook:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MultiSimTelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MultiSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MultiSimTelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MultiSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->isLandscapeLayoutAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsLandscapeAvailable:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/keyguard/sec/SecEmergencyCircleView$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecEmergencyCircleView$2;-><init>(Lcom/android/keyguard/sec/SecEmergencyCircleView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MultiSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/MultiSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mFirstBorder:I

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mSecondBorder:I

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    const v2, 0x7f0b005c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/keyguard/sec/SecEmergencyCircleView$DuosPhoneStateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/sec/SecEmergencyCircleView$DuosPhoneStateListener;-><init>(Lcom/android/keyguard/sec/SecEmergencyCircleView;I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/keyguard/sec/SecEmergencyCircleView$DuosPhoneStateListener;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/sec/SecEmergencyCircleView$DuosPhoneStateListener;-><init>(Lcom/android/keyguard/sec/SecEmergencyCircleView;I)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/keyguard/sec/SecEmergencyCircleView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView$3;-><init>(Lcom/android/keyguard/sec/SecEmergencyCircleView;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony1:Landroid/telephony/MultiSimTelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mMultiSimTelephony2:Landroid/telephony/MultiSimTelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->updateCurrentView()V

    :cond_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string v0, "SecEmergencyCircleView"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string v0, "SecEmergencyCircleView"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    const/16 v12, 0x8

    const-wide/high16 v10, 0x4000000000000000L

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsFirst:Z

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsFirst:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "SecEmergencyCircleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC :: serviceState1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SecEmergencyCircleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC :: serviceState2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-eq v5, v4, :cond_2

    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-ne v5, v8, :cond_3

    :cond_2
    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    if-eq v5, v4, :cond_0

    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState2:I

    if-eq v5, v8, :cond_0

    :cond_3
    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->isIgnoreTouch:Z

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_4

    iput-boolean v9, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->isIgnoreTouch:Z

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v4, p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_5
    const-string v5, "SecEmergencyCircleView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMCC :: serviceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-eq v5, v4, :cond_0

    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mServiceState:I

    if-ne v5, v8, :cond_3

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v4, p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_8
    :goto_1
    :pswitch_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v5, p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :pswitch_3
    const-string v5, "SecEmergencyCircleView"

    const-string v6, "onTouchEvent - DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mStartX:F

    iput v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mStartY:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mDistance:D

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->setShortCutImageResource(I)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAusFeature()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsCallStateOffHook:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f060106

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsCallStateOffHook:Z

    if-ne v5, v4, :cond_e

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    const v6, 0x1040583

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    :goto_3
    :pswitch_4
    const-string v5, "SecEmergencyCircleView"

    const-string v6, "onTouchEvent - MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mStartX:F

    sub-float v5, v2, v5

    float-to-int v0, v5

    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mStartY:F

    sub-float v5, v3, v5

    float-to-int v1, v5

    int-to-double v5, v0

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-double v7, v1

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mDistance:D

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mDistance:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_f

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->setShortCutImageResource(I)V

    :goto_4
    iget-wide v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_8

    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->setShortCutImageResource(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iput-boolean v9, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsFirst:Z

    invoke-direct {p0, p0, p1}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    const-string v5, "SecEmergencyCircleView"

    const-string v6, "dismiss keyguard"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_c
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->takeEmergencyCallList()V

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f060105

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_e
    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    const v6, 0x7f06007e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_f
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->setShortCutImageResource(I)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->takeEmergencyCallAction()V

    goto/16 :goto_1

    :pswitch_5
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->isIgnoreTouch:Z

    :pswitch_6
    const-string v5, "SecEmergencyCircleView"

    const-string v6, "onTouchEvent - UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->setShortCutImageResource(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mFirstBorder:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mDistance:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_8

    iget-wide v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_8

    iput-boolean v9, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mIsFirst:Z

    invoke-direct {p0, p0, p1}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    const-string v5, "SecEmergencyCircleView"

    const-string v6, "dismiss keyguard"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_12
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->takeEmergencyCallList()V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->takeEmergencyCallAction()V

    goto/16 :goto_1

    :cond_14
    iget-object v5, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v5, p0, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method protected rotateIcon(I)V
    .locals 6
    .param p1    # I

    const/high16 v5, 0x43870000

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mCurrentOrientation:F

    int-to-float v3, p1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v2

    if-nez v2, :cond_3

    iget v0, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mCurrentOrientation:F

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
    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyCallButton:Landroid/widget/ImageView;

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

    iput v2, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mCurrentOrientation:F

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

    iput-object p1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mAdditionalUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-void
.end method

.method public setEmergencyTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mEmergencyTextView:Landroid/widget/TextView;

    return-void
.end method

.method public setPasswordEntryView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mCurrentVisibility:I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->updateCurrentView()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->VoIPIsInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->switchPersona(I)Z

    :cond_2
    const/4 v1, 0x1

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->callToEmergencyLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->launchEmergencyDialler()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecEmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
