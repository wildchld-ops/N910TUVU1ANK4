.class public Lcom/android/phone/LowBatteryManager;
.super Ljava/lang/Object;
.source "LowBatteryManager.java"


# static fields
.field private static final ENG:Z

.field private static sInstance:Lcom/android/phone/LowBatteryManager;


# instance fields
.field public final AUTO_TEST_ACTION:Ljava/lang/String;

.field public final CALLFAIL_CAUSE:Ljava/lang/String;

.field public final DISCONNECT_CAUSE_KEY:Ljava/lang/String;

.field public final DURATION_KEY:Ljava/lang/String;

.field public final NUMBER_KEY:Ljava/lang/String;

.field public final PHONE_STATE_IDLE:I

.field public final PHONE_STATE_KEY:Ljava/lang/String;

.field public final PHONE_STATE_OFF_HOOK:I

.field public final PHONE_STATE_RINGING:I

.field public final STARTED_TIME_KEY:Ljava/lang/String;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field public mIsBatteryLow:Z

.field private mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field public mLowBatteryWarningLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/LowBatteryManager;->ENG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.siso.autotest.PHONE_STATE"

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->AUTO_TEST_ACTION:Ljava/lang/String;

    const-string v0, "state"

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->PHONE_STATE_KEY:Ljava/lang/String;

    const-string v0, "cause"

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->DISCONNECT_CAUSE_KEY:Ljava/lang/String;

    const-string v0, "duration"

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->DURATION_KEY:Ljava/lang/String;

    const-string v0, "number"

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->NUMBER_KEY:Ljava/lang/String;

    const-string v0, "initiatedtime"

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->STARTED_TIME_KEY:Ljava/lang/String;

    const-string v0, "callfailcause"

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->CALLFAIL_CAUSE:Ljava/lang/String;

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/LowBatteryManager;->PHONE_STATE_IDLE:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/phone/LowBatteryManager;->PHONE_STATE_OFF_HOOK:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/phone/LowBatteryManager;->PHONE_STATE_RINGING:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LowBatteryManager;->mIsBatteryLow:Z

    new-instance v0, Lcom/android/phone/LowBatteryManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LowBatteryManager$1;-><init>(Lcom/android/phone/LowBatteryManager;)V

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/LowBatteryManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/LowBatteryManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0}, Lcom/android/phone/LowBatteryManager;->setLowBatteryWarningLevel()V

    invoke-direct {p0}, Lcom/android/phone/LowBatteryManager;->registerLowBatteryReceiver()V

    return-void
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-boolean v0, Lcom/android/phone/LowBatteryManager;->ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "LowBatteryManager"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/phone/LowBatteryManager;
    .locals 1

    sget-object v0, Lcom/android/phone/LowBatteryManager;->sInstance:Lcom/android/phone/LowBatteryManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/LowBatteryManager;->init()Lcom/android/phone/LowBatteryManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/LowBatteryManager;->sInstance:Lcom/android/phone/LowBatteryManager;

    goto :goto_0
.end method

.method private hangupRingingCall()V
    .locals 1

    const-string v0, "hangupRingingCall()..."

    invoke-static {v0}, Lcom/android/phone/LowBatteryManager;->englog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/LowBatteryManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    return-void
.end method

.method static init()Lcom/android/phone/LowBatteryManager;
    .locals 3

    const-class v1, Lcom/android/phone/LowBatteryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/LowBatteryManager;->sInstance:Lcom/android/phone/LowBatteryManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/LowBatteryManager;

    invoke-direct {v0}, Lcom/android/phone/LowBatteryManager;-><init>()V

    sput-object v0, Lcom/android/phone/LowBatteryManager;->sInstance:Lcom/android/phone/LowBatteryManager;

    :goto_0
    sget-object v0, Lcom/android/phone/LowBatteryManager;->sInstance:Lcom/android/phone/LowBatteryManager;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/phone/LowBatteryManager;->sInstance:Lcom/android/phone/LowBatteryManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/LowBatteryManager;->englog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private internalHangup()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/LowBatteryManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalHangup()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/LowBatteryManager;->englog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/LowBatteryManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    return-void
.end method

.method private registerLowBatteryReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/LowBatteryManager;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/LowBatteryManager;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    return-void
.end method


# virtual methods
.method public isLowBatt()Z
    .locals 1

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/LowBatteryManager;->mIsBatteryLow:Z

    goto :goto_0
.end method

.method public performBatteryLowProcess()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/LowBatteryManager;->isLowBatt()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/LowBatteryManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/LowBatteryManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_4

    const-string v2, "LowBatteryManager"

    const-string v3, "performBatteryLowProcess - RINGING "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/LowBatteryManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const v3, 0x7f090424

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mLowBatteryCheckForCallLog:Z

    invoke-direct {p0}, Lcom/android/phone/LowBatteryManager;->hangupRingingCall()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/LowBatteryManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/phone/LowBatteryManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const v3, 0x7f090574

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->showToast(Ljava/lang/String;)V

    const-string v2, "LowBatteryManager"

    const-string v3, "performBatteryLowProcess - OUGOING or ACTIVE "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/LowBatteryManager;->internalHangup()V

    goto :goto_0
.end method

.method public setLowBatteryWarningLevel()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/LowBatteryManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LowBatteryManager;->mLowBatteryWarningLevel:I

    return-void
.end method
