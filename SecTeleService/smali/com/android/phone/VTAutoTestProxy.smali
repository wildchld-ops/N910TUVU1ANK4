.class public Lcom/android/phone/VTAutoTestProxy;
.super Ljava/lang/Object;
.source "VTAutoTestProxy.java"


# static fields
.field private static final ENG:Z

.field private static sInstance:Lcom/android/phone/VTAutoTestProxy;


# instance fields
.field public final AUTO_TEST_ACTION:Ljava/lang/String;

.field public final CALLFAIL_CAUSE:Ljava/lang/String;

.field CallStateReceiver:Landroid/content/BroadcastReceiver;

.field public final DISCONNECT_CAUSE_KEY:Ljava/lang/String;

.field public final DURATION_KEY:Ljava/lang/String;

.field public final NUMBER_KEY:Ljava/lang/String;

.field public final PHONE_STATE_IDLE:I

.field public final PHONE_STATE_KEY:Ljava/lang/String;

.field public final PHONE_STATE_OFF_HOOK:I

.field public final PHONE_STATE_RINGING:I

.field public final STARTED_TIME_KEY:Ljava/lang/String;

.field isActive:Z

.field public isRunning:Z

.field private mApp:Lcom/android/phone/PhoneGlobals;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/VTAutoTestProxy;->ENG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.siso.autotest.PHONE_STATE"

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->AUTO_TEST_ACTION:Ljava/lang/String;

    const-string v0, "state"

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->PHONE_STATE_KEY:Ljava/lang/String;

    const-string v0, "cause"

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->DISCONNECT_CAUSE_KEY:Ljava/lang/String;

    const-string v0, "duration"

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->DURATION_KEY:Ljava/lang/String;

    const-string v0, "number"

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->NUMBER_KEY:Ljava/lang/String;

    const-string v0, "initiatedtime"

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->STARTED_TIME_KEY:Ljava/lang/String;

    const-string v0, "callfailcause"

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->CALLFAIL_CAUSE:Ljava/lang/String;

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/VTAutoTestProxy;->PHONE_STATE_IDLE:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/phone/VTAutoTestProxy;->PHONE_STATE_OFF_HOOK:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/phone/VTAutoTestProxy;->PHONE_STATE_RINGING:I

    iput-boolean v1, p0, Lcom/android/phone/VTAutoTestProxy;->isRunning:Z

    new-instance v0, Lcom/android/phone/VTAutoTestProxy$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VTAutoTestProxy$1;-><init>(Lcom/android/phone/VTAutoTestProxy;)V

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->CallStateReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/phone/VTAutoTestProxy;->isActive:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Lcom/android/phone/VTAutoTestProxy;->registerForAutoTest()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VTAutoTestProxy;)V
    .locals 0
    .param p0    # Lcom/android/phone/VTAutoTestProxy;

    invoke-direct {p0}, Lcom/android/phone/VTAutoTestProxy;->hangUpCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VTAutoTestProxy;)V
    .locals 0
    .param p0    # Lcom/android/phone/VTAutoTestProxy;

    invoke-direct {p0}, Lcom/android/phone/VTAutoTestProxy;->answerCall()V

    return-void
.end method

.method private answerCall()V
    .locals 1

    const-string v0, "answerCall"

    invoke-static {v0}, Lcom/android/phone/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    return-void
.end method

.method private broadCastForAutoTest(I)V
    .locals 2
    .param p1    # I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.siso.autotest.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadCastForAutoTest(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.siso.autotest.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "state"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "callfailcause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "number"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "duration"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "initiatedtime"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    sget-boolean v0, Lcom/android/phone/VTAutoTestProxy;->ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "VTAutoTestProxy"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/phone/VTAutoTestProxy;
    .locals 1

    sget-object v0, Lcom/android/phone/VTAutoTestProxy;->sInstance:Lcom/android/phone/VTAutoTestProxy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/VTAutoTestProxy;->init()Lcom/android/phone/VTAutoTestProxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/VTAutoTestProxy;->sInstance:Lcom/android/phone/VTAutoTestProxy;

    goto :goto_0
.end method

.method private hangUpCall()V
    .locals 4

    const-string v2, "hangUpCall"

    invoke-static {v2}, Lcom/android/phone/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hangUpCall Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static init()Lcom/android/phone/VTAutoTestProxy;
    .locals 3

    const-class v1, Lcom/android/phone/VTAutoTestProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/VTAutoTestProxy;->sInstance:Lcom/android/phone/VTAutoTestProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/VTAutoTestProxy;

    invoke-direct {v0}, Lcom/android/phone/VTAutoTestProxy;-><init>()V

    sput-object v0, Lcom/android/phone/VTAutoTestProxy;->sInstance:Lcom/android/phone/VTAutoTestProxy;

    :goto_0
    sget-object v0, Lcom/android/phone/VTAutoTestProxy;->sInstance:Lcom/android/phone/VTAutoTestProxy;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/phone/VTAutoTestProxy;->sInstance:Lcom/android/phone/VTAutoTestProxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1    # Landroid/os/AsyncResult;

    const-string v1, "onDisconnect"

    invoke-static {v1}, Lcom/android/phone/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/VTAutoTestProxy;->isActive:Z

    invoke-direct {p0, v0}, Lcom/android/phone/VTAutoTestProxy;->broadCastForAutoTest(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private onIncomingCall()V
    .locals 1

    const-string v0, "onIncomingCall"

    invoke-static {v0}, Lcom/android/phone/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/android/phone/VTAutoTestProxy;->broadCastForAutoTest(I)V

    return-void
.end method

.method private onPhoneStateChanged()V
    .locals 2

    const-string v0, "onPhoneStateChanged"

    invoke-static {v0}, Lcom/android/phone/VTAutoTestProxy;->englog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/VTAutoTestProxy;->isActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VTAutoTestProxy;->isActive:Z

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/phone/VTAutoTestProxy;->broadCastForAutoTest(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VTAutoTestProxy;->isActive:Z

    goto :goto_0
.end method

.method private registerForAutoTest()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.ControlAutoTest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.EndVTCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.AcceptInComingVTCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.mutecall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.DowngradeCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.UpgradeCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/VTAutoTestProxy;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/VTAutoTestProxy;->CallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public handlemessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    invoke-virtual {p0}, Lcom/android/phone/VTAutoTestProxy;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/VTAutoTestProxy;->onPhoneStateChanged()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/VTAutoTestProxy;->onIncomingCall()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/VTAutoTestProxy;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/VTAutoTestProxy;->isRunning:Z

    return v0
.end method
