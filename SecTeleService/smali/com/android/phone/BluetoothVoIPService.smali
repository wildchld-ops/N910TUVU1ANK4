.class public Lcom/android/phone/BluetoothVoIPService;
.super Landroid/app/Service;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothVoIPService$4;,
        Lcom/android/phone/BluetoothVoIPService$CallNumber;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field static backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

.field static foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

.field public static mIsVoipActive:Z

.field static ringingVoIPCall:Lcom/android/internal/telephony/Call$State;


# instance fields
.field direction:I

.field index:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioPossible:Z

.field mBgndEarliestConnectionTime:J

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field mCallService:Lcom/android/phone/BluetoothPhoneService;

.field private mCallStartTime:J

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mForegroundCallState:Lcom/android/internal/telephony/Call$State;

.field private mHandler:Landroid/os/Handler;

.field mNumActive:I

.field mNumHeld:I

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingingCallState:Lcom/android/internal/telephony/Call$State;

.field private mRoam:Z

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVoIPCall:I

.field private mVoIPCallheld:I

.field private mVoIPCallsetup:I

.field private mVoIPIgnoreRing:Z

.field private mVoIPPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

.field private mVoIPRoam:I

.field private mVoIPStopRing:Z

.field private mWaitingForCallStart:Z

.field mode:I

.field mpty:Z

.field number:Ljava/lang/String;

.field status:I

.field type:I

.field voipInterfaceService:Landroid/os/IVoIPInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/BluetoothVoIPService;->DBG:Z

    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-wide v2, p0, Lcom/android/phone/BluetoothVoIPService;->mCallStartTime:J

    iput-wide v2, p0, Lcom/android/phone/BluetoothVoIPService;->mBgndEarliestConnectionTime:J

    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mRoam:Z

    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPIgnoreRing:Z

    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPStopRing:Z

    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCdmaIsSecondCallActive:Z

    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCdmaCallsSwapped:Z

    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->index:I

    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->direction:I

    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->status:I

    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->mode:I

    iput-boolean v1, p0, Lcom/android/phone/BluetoothVoIPService;->mpty:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->number:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/BluetoothVoIPService;->type:I

    new-instance v0, Lcom/android/phone/BluetoothVoIPService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothVoIPService$1;-><init>(Lcom/android/phone/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/BluetoothVoIPService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothVoIPService$2;-><init>(Lcom/android/phone/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/phone/BluetoothVoIPService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothVoIPService$3;-><init>(Lcom/android/phone/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothVoIPService;

    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->updateVoIPServiceState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothVoIPService;

    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->handleListCurrentCalls()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothVoIPService;)V
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothVoIPService;

    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->callStarted()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothVoIPService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothVoIPService;
    .param p1    # Landroid/bluetooth/BluetoothHeadset;

    iput-object p1, p0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothVoIPService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0    # Lcom/android/phone/BluetoothVoIPService;

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothVoIPService;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/BluetoothVoIPService;

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized callStarted()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothVoIPService;->mWaitingForCallStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothVoIPService;->mWaitingForCallStart:Z

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
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

.method static convertCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 4
    .param p0    # Lcom/android/internal/telephony/Call$State;

    const/4 v0, 0x6

    sget-object v1, Lcom/android/phone/BluetoothVoIPService$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad call state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handleListCurrentCalls()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BluetoothVoIPService"

    const-string v1, "There is no vaild VoIP Call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v0, "BluetoothVoIPService"

    const-string v1, "connect watch device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string v0, "BluetoothVoIPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleListCurrentCalls exeption :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Try to handle List Current Calls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_1
    const/4 v0, 0x2

    if-ge v10, v0, :cond_0

    const-string v0, "BluetoothVoIPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to get call info of index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mCallService.mLastIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothVoIPService;->mCallService:Lcom/android/phone/BluetoothPhoneService;

    sget v2, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0, v10}, Landroid/os/IVoIPInterface;->getCallSessionInfo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getIndexForClcc()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCallService:Lcom/android/phone/BluetoothPhoneService;

    sget v1, Lcom/android/phone/BluetoothPhoneService;->mLastIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->index:I

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getDirectionForClcc()I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->direction:I

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getStatusForClcc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->status:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->mode:I

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getMptyForClcc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothVoIPService;->mpty:Z

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getNumberForClcc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->number:Ljava/lang/String;

    const/16 v0, 0x81

    iput v0, p0, Lcom/android/phone/BluetoothVoIPService;->type:I

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/phone/BluetoothVoIPService;->index:I

    iget v2, p0, Lcom/android/phone/BluetoothVoIPService;->direction:I

    iget v3, p0, Lcom/android/phone/BluetoothVoIPService;->status:I

    iget v4, p0, Lcom/android/phone/BluetoothVoIPService;->mode:I

    iget-boolean v5, p0, Lcom/android/phone/BluetoothVoIPService;->mpty:Z

    iget-object v6, p0, Lcom/android/phone/BluetoothVoIPService;->number:Ljava/lang/String;

    iget v7, p0, Lcom/android/phone/BluetoothVoIPService;->type:I

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "BluetoothVoIPService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateVoIPServiceState()V
    .locals 0

    return-void
.end method


# virtual methods
.method public changeVoIPStateToPhoneState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 3
    .param p1    # I

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVoIPStateToCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothVoIPService;->log(Ljava/lang/String;)V

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public convertToCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .param p1    # I

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    packed-switch p1, :pswitch_data_0

    :goto_0
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToCallState : index("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public handleVoipCallStateChange()V
    .locals 26

    const/16 v25, 0x1

    const/4 v14, 0x0

    sget-object v17, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCallsetup:I

    move/from16 v24, v0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/BluetoothVoIPService;->mIsVoipActive:Z

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getState()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getActiveFgCallState()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getFirstActiveBgCallState()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->getFirstActiveRingingCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/phone/BluetoothVoIPService;->changeVoIPStateToPhoneState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/phone/BluetoothVoIPService;->convertToCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoipCallStateChange() mPhone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "                  mFVoIPCall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mBVoIPCall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mRVoIPCall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "         mVoIPPhoneState:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), newVoIPState:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "              mVoIPCall      :("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mVoIPCallsetup:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCallsetup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mVoIPCallheld:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPCallheld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    move-object/from16 v22, v0

    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->ringingVoIPCall:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->foregroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    const-string v1, "BluetoothVoIPService"

    const-string v2, "handlePreciseCallStateChange. Call disconnecting, wait before update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v16

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleVoipCallStateChange exeption :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoIPcall:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), VoIPcallsetup:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), VoIPcallheld:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newVoIPState:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isBluetoothHeadsetConnected():("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioPossible:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/phone/BluetoothVoIPService;->mAudioPossible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumActive("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumHeld("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRingingCallState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mForegroundCallState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVoIPRingingNumber("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v19

    if-eq v1, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v17, v0

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    if-eq v1, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v17, v0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    sget-object v17, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    const-string v1, "BluetoothVoIPService"

    const-string v2, "phone state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_7

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumActive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNumHeld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mconvertCallState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothVoIPService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v17, v0

    goto/16 :goto_3

    :cond_7
    sget-object v1, Lcom/android/phone/BluetoothVoIPService;->backgroundVoIPCall:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_8

    const-string v1, "BluetoothVoIPService"

    const-string v2, "CS Call is Ringing, VoIP Call is Holding"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_9

    const-string v1, "BluetoothVoIPService"

    const-string v2, "CS Call is not Idle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumActive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNumHeld: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mconvertCallState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    invoke-static/range {v17 .. v17}, Lcom/android/phone/BluetoothVoIPService;->convertCallState(Lcom/android/internal/telephony/Call$State;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/BluetoothVoIPService$CallNumber;->access$500(Lcom/android/phone/BluetoothVoIPService$CallNumber;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    # getter for: Lcom/android/phone/BluetoothVoIPService$CallNumber;->mType:I
    invoke-static {v6}, Lcom/android/phone/BluetoothVoIPService$CallNumber;->access$600(Lcom/android/phone/BluetoothVoIPService$CallNumber;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothVoIPService"

    const-string v2, "mAdapter null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "BluetoothVoIPService:StartCall"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/BluetoothVoIPService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    new-instance v1, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v1}, Lcom/android/phone/BluetoothPhoneService;-><init>()V

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mCallService:Lcom/android/phone/BluetoothPhoneService;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mForegroundCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mRingingCallState:Lcom/android/internal/telephony/Call$State;

    iput v4, p0, Lcom/android/phone/BluetoothVoIPService;->mNumActive:I

    iput v4, p0, Lcom/android/phone/BluetoothVoIPService;->mNumHeld:I

    new-instance v1, Lcom/android/phone/BluetoothVoIPService$CallNumber;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/phone/BluetoothVoIPService$CallNumber;-><init>(Lcom/android/phone/BluetoothVoIPService;Ljava/lang/String;ILcom/android/phone/BluetoothVoIPService$1;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/phone/BluetoothVoIPService$CallNumber;

    iput v4, p0, Lcom/android/phone/BluetoothVoIPService;->mVoIPRoam:I

    invoke-direct {p0}, Lcom/android/phone/BluetoothVoIPService;->updateVoIPServiceState()V

    invoke-virtual {p0}, Lcom/android/phone/BluetoothVoIPService;->handleVoipCallStateChange()V

    sget-boolean v1, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "BluetoothVoIPService"

    const-string v2, "registerForServiceStateChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array v1, v5, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mClccTimestamps:[J

    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mClccUsed:[Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothVoIPService;->mClccUsed:[Z

    aput-boolean v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-boolean v0, Lcom/android/phone/BluetoothVoIPService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Stopping Bluetooth BluetoothVoIPService Service"

    invoke-static {v0}, Lcom/android/phone/BluetoothVoIPService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/BluetoothVoIPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "BluetoothVoIPService"

    const-string v1, "Stopping Bluetooth BluetoothVoIPService Service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    sget-boolean v0, Lcom/android/phone/BluetoothVoIPService;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothVoIPService"

    const-string v1, "BluetoothVoIPService started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
