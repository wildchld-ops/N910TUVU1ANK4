.class public Lcom/android/phone/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Lcom/android/phone/CallModeler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothManager$2;,
        Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;,
        Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetAudioState:I

.field private mBluetoothHeadsetState:I

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallModeler:Lcom/android/phone/CallModeler;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowBluetoothIndication:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/CallManager;
    .param p3    # Lcom/android/phone/CallModeler;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    iput-boolean v1, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    iput-boolean v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    new-instance v0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/phone/BluetoothManager;Lcom/android/phone/BluetoothManager$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/phone/BluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothManager$1;-><init>(Lcom/android/phone/BluetoothManager;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object p1, p0, Lcom/android/phone/BluetoothManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/BluetoothManager;->mCallManager:Lcom/android/internal/telephony/CallManager;

    iput-object p3, p0, Lcom/android/phone/BluetoothManager;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0    # Lcom/android/phone/BluetoothManager;

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothManager;
    .param p1    # Landroid/bluetooth/BluetoothHeadset;

    iput-object p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothManager;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothManager;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothManager;)I
    .locals 1
    .param p0    # Lcom/android/phone/BluetoothManager;

    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothManager;I)I
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothManager;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothManager;)I
    .locals 1
    .param p0    # Lcom/android/phone/BluetoothManager;

    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/BluetoothManager;I)I
    .locals 0
    .param p0    # Lcom/android/phone/BluetoothManager;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    sget-object v0, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private notifyListeners(Z)V
    .locals 2
    .param p1    # Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;

    invoke-interface {v1, p1, p0}, Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;->onBluetoothIndicationChange(ZLcom/android/phone/BluetoothManager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0    # I
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/CallManager;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/phone/BluetoothManager;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;Z)Z

    move-result v0

    return v0
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;Z)Z
    .locals 5
    .param p0    # I
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/CallManager;
    .param p3    # Z

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/phone/BluetoothManager$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-eq p0, v4, :cond_1

    if-eqz p3, :cond_0

    :cond_1
    const/16 v2, 0xc

    if-ne p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    if-ne p0, v4, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addBluetoothIndicatorListener(Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;)V
    .locals 1
    .param p1    # Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method connectBluetoothAudio()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0, v1}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionRequestTime:J

    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 2

    const-string v0, "disconnectBluetoothAudio()..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    return-void
.end method

.method getConnectedBluetoothDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v4, :cond_1

    const-string v4, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHeadset)"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-ne v4, v6, :cond_3

    const/4 v3, 0x1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec ago)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msec ago)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v4, v2}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;Z)V

    move v2, v3

    goto :goto_0
.end method

.method isBluetoothAudioConnected_all()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v4, :cond_1

    const-string v4, "isBluetoothAudioConnected_all: ==> FALSE (null mBluetoothHeadset)"

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-ne v4, v6, :cond_3

    const/4 v3, 0x1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBluetoothAudioConnected_all: ==> isAudioOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method isBluetoothAvailable()Z
    .locals 5

    const-string v3, "isBluetoothAvailable()..."

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - headset address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isBluetoothAvailable() ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;Z)V

    return v2
.end method

.method isBluetoothHeadsetAudioOn()Z
    .locals 2

    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBluetoothWatchSingleConnected()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "WA"

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->getConnectedBluetoothDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v6, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/BluetoothManager;->log(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    return-void
.end method

.method public onForceUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothManager;->onUpdate(Ljava/util/List;)V

    return-void
.end method

.method public onHoldCallStateChange(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    return-void
.end method

.method public onModifyCall(ZILjava/lang/String;)V
    .locals 0
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;

    return-void
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;CZ)V
    .locals 0
    .param p1    # Lcom/android/internal/telephony/Connection$PostDialState;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # C
    .param p5    # Z

    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    return-void
.end method

.method showBluetoothIndication()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    return v0
.end method

.method updateBluetoothIndication()V
    .locals 3

    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/BluetoothManager;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    iget-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->notifyListeners(Z)V

    return-void
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .param p1    # Z

    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2, p1}, Lcom/android/phone/BluetoothManager;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    iget-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->notifyListeners(Z)V

    return-void
.end method
