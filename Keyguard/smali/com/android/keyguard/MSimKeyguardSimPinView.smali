.class public Lcom/android/keyguard/MSimKeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardSimPinView;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sCancelledCount:I


# instance fields
.field private isWrongPIN:Z

.field private isWrongPINCrash:Z

.field private mHandler:Landroid/os/Handler;

.field private mRemainingCount:I

.field private mRemainingCountTextView:Landroid/widget/TextView;

.field private mSubscription:I

.field private mWakelockSequence:I

.field private old_Num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MSimKeyguardSimPinView"

    sput-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    iput v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    new-instance v0, Lcom/android/keyguard/MSimKeyguardSimPinView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$6;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardSimPinView--DSNETWORK VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/MSimKeyguardSimPinView;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/MSimKeyguardSimPinView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->closeKeyGuard(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/MSimKeyguardSimPinView;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/MSimKeyguardSimPinView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/MSimKeyguardSimPinView;

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    return v0
.end method

.method private closeKeyGuard(Z)V
    .locals 10
    .param p1    # Z

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    sget v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v7, v1, -0x1

    if-lt v6, v7, :cond_5

    :goto_2
    return-void

    :cond_5
    sget v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    :cond_6
    if-gt v3, v9, :cond_7

    sput v8, Lcom/android/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    :cond_7
    if-nez p1, :cond_8

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    :cond_8
    iget v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    if-ltz v6, :cond_9

    iget v6, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v8}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    :cond_a
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_2
.end method

.method private getSimPinRetry()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "phone"

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getSimPinRetry()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPinRetry() mSubscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # of remaining count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_1
    const-string v1, "phone_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccPin1RetryCount(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleTimeout(I)V
    .locals 2
    .param p1    # I

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0b0105

    return v0
.end method

.method protected getSecurityMessageDisplay(I)Ljava/lang/CharSequence;
    .locals 7
    .param p1    # I

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600bd

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    const-string v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600bd

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 11

    const v10, 0x7f0200ad

    const v9, 0x7f0200ae

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->onFinishInflate()V

    const v5, 0x7f0b00d7

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0b0104

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v4

    const-string v5, "ril.MSIMM"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5

    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    sget-object v5, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v6, "onFinishInflate "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0b0043

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v5, Lcom/android/keyguard/MSimKeyguardSimPinView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$1;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/keyguard/MSimKeyguardSimPinView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$2;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    const v5, 0x7f0b0038

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/android/keyguard/MSimKeyguardSimPinView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$3;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/keyguard/MSimKeyguardSimPinView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/MSimKeyguardSimPinView$4;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-array v6, v7, [Landroid/text/InputFilter;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPinView;->filterNum:Landroid/text/InputFilter;

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    return-void

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    if-ne v4, v7, :cond_0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v5

    if-ne v5, v7, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    :cond_6
    if-nez v4, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v10, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    :cond_7
    if-ne v4, v7, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .param p1    # I

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 5

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DSNETWORK"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset()--DSNETWORK VALUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DSNETWORK"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSimPinRetry()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    invoke-virtual {p0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->updateRetryCount()V

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSimPinView;->reset()V

    return-void
.end method

.method public resetState()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f06008c

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iput-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPIN:Z

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x10408a3

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iput-boolean v3, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->isWrongPINCrash:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f060085

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public updateRetryCount()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600d9

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRetryCount():  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600da

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock(): entry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f06008d

    invoke-virtual {p0, v2}, Lcom/android/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mRemainingCount:I

    iput v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->old_Num_of_retry:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const v1, 0x493e0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/MSimKeyguardSimPinView;->pokeWakelock(I)V

    iget-boolean v1, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    sget-object v1, Lcom/android/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v2, "startCheckSimPin(), Multi SIM enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/keyguard/MSimKeyguardSimPinView$5;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/keyguard/MSimKeyguardSimPinView$5;-><init>(Lcom/android/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
