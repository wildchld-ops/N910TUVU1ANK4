.class public Lcom/android/keyguard/sec/EmergencyCircleView;
.super Landroid/widget/FrameLayout;
.source "EmergencyCircleView.java"


# instance fields
.field private isIgnoreTouch:Z

.field private mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsFirst:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntryView:Landroid/widget/TextView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/EmergencyCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    iget-object v0, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->forceSetCircleEffect()V

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
    const-string v3, "EmergencyCircleView"

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

    const-string v3, "EmergencyCircleView"

    const-string v4, "VoIPIsInUse() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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


# virtual methods
.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const-wide/high16 v10, 0x4000000000000000L

    const/4 v4, 0x1

    const/4 v9, 0x0

    iget-boolean v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v4, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mCircleUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    invoke-interface {v5, p1, p2}, Lcom/android/keyguard/sec/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartX:F

    iput v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartY:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAusFeature()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f060105

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_3
    :pswitch_2
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartX:F

    sub-float v5, v2, v5

    float-to-int v0, v5

    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mStartY:F

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

    iput-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallAction()V

    goto :goto_1

    :pswitch_3
    iput-boolean v4, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->isIgnoreTouch:Z

    :pswitch_4
    const-string v5, "EmergencyCircleView"

    const-string v6, "onTouchEvent - UP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mFirstBorder:I

    int-to-double v5, v5

    iget-wide v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    iget-wide v5, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mDistance:D

    iget v7, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mSecondBorder:I

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    iput-boolean v9, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mIsFirst:Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallList()V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->takeEmergencyCallAction()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->VoIPIsInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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

    iget-object v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPasswordEntryView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/EmergencyCircleView;->callToEmergencyLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->launchEmergencyDialler()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/EmergencyCircleView;->launchEmergencyDialler()V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mPowerManager:Landroid/os/PowerManager;

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

    iget-object v1, p0, Lcom/android/keyguard/sec/EmergencyCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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
