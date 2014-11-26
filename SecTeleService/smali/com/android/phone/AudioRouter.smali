.class Lcom/android/phone/AudioRouter;
.super Ljava/lang/Object;
.source "AudioRouter.java"

# interfaces
.implements Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;
.implements Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AudioRouter$AudioModeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static LOG_TAG:Ljava/lang/String;

.field private static final VDBG:Z


# instance fields
.field private mAudioMode:I

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mContext:Landroid/content/Context;

.field private mIsBluetoothConnected:Z

.field private mIsWiredHeadsetConnected:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/AudioRouter$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousMode:I

.field private mSupportedModes:I

.field private final mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, Lcom/android/phone/AudioRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v1, :cond_0

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/AudioRouter;->DBG:Z

    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/android/phone/AudioRouter;->VDBG:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;Lcom/android/phone/WiredHeadsetManager;Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/phone/BluetoothManager;
    .param p3    # Lcom/android/phone/WiredHeadsetManager;
    .param p4    # Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mPreviousMode:I

    sget v0, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    iput-boolean v1, p0, Lcom/android/phone/AudioRouter;->mIsBluetoothConnected:Z

    iput-boolean v1, p0, Lcom/android/phone/AudioRouter;->mIsWiredHeadsetConnected:Z

    iput-object p1, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    iput-object p3, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    iput-object p4, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->init()V

    return-void
.end method

.method private calculateModeFromCurrentState()I
    .locals 5

    const/4 v2, 0x1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    :cond_0
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateModeFromCurrentState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;Z)V

    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v3}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    goto :goto_1
.end method

.method private calculateSupportedModes()I
    .locals 2

    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v1}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    or-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/BluetoothManager;->addBluetoothIndicatorListener(Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;)V

    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/WiredHeadsetManager;->addWiredHeadsetListener(Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;)V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logD(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    sget-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private notifyListeners()V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-static {v2}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-static {v2}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/AudioRouter$AudioModeListener;

    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-virtual {p0}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/phone/AudioRouter$AudioModeListener;->onAudioModeChange(IZ)V

    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/AudioRouter$AudioModeListener;

    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-interface {v1, v2}, Lcom/android/phone/AudioRouter$AudioModeListener;->onSupportedAudioModeChange(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private selectWiredOrEarpiece(I)I
    .locals 2
    .param p1    # I

    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    iget v1, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    and-int p1, v0, v1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "One of wired headset or earpiece should always be valid."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    :cond_0
    return p1
.end method

.method private selectWiredOrEarpieceOrSpeaker(I)I
    .locals 1
    .param p1    # I

    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE_OR_SPEAKER:I

    if-ne p1, v0, :cond_1

    const-string v0, "ims_video_default_speaker_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->resetPSVTSpeakerMode()V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSpeakerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget p1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    :cond_1
    :goto_0
    return p1

    :cond_2
    sget p1, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    goto :goto_0
.end method

.method private turnOnOffBluetooth(Z)Z
    .locals 4
    .param p1    # Z

    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected_all()Z

    move-result v1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->connectBluetoothAudio()V

    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    if-nez p1, :cond_0

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothManager;->disconnectBluetoothAudio()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Asking to turn on bluetooth, but there is no bluetooth availabled."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private turnOnOffSpeaker(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method

.method private updateAudioModeTo(I)V
    .locals 5
    .param p1    # I

    iget v1, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v2

    iput v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting audio mode to an unsupported mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", supported ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-static {v4}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    if-eq v1, v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    if-eq v2, p1, :cond_2

    sget-object v2, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio mode changing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_2
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    iput v2, p0, Lcom/android/phone/AudioRouter;->mPreviousMode:I

    iput p1, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    if-eqz v0, :cond_0

    const-string v2, "support_folder_hardkey"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-virtual {p0, v2}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->notifyListeners()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAudioModeListener(Lcom/android/phone/AudioRouter$AudioModeListener;)V
    .locals 2
    .param p1    # Lcom/android/phone/AudioRouter$AudioModeListener;

    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-virtual {p0}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/phone/AudioRouter$AudioModeListener;->onAudioModeChange(IZ)V

    iget v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-interface {p1, v0}, Lcom/android/phone/AudioRouter$AudioModeListener;->onSupportedAudioModeChange(I)V

    :cond_0
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    iget v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    return v0
.end method

.method public getSupportedAudioModes()I
    .locals 1

    iget v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    return v0
.end method

.method public onBluetoothIndicationChange(ZLcom/android/phone/BluetoothManager;)V
    .locals 5
    .param p1    # Z
    .param p2    # Lcom/android/phone/BluetoothManager;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBluetoothIndicationChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_2

    move v0, v1

    :goto_0
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateModeFromCurrentState()I

    move-result v3

    sget v4, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "onBluetoothIndicationChange VideoCall : Speaker on always after BT disconnect"

    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    const-string v3, "ims_video_default_speaker_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateModeFromCurrentState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/AudioRouter;->mIsBluetoothConnected:Z

    if-eq v2, p1, :cond_1

    invoke-static {v1, v1}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/phone/AudioRouter;->mIsBluetoothConnected:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/phone/AudioRouter;->mPreviousMode:I

    sget v4, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v3, v4, :cond_4

    const-string v3, "volte_jpn_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1
.end method

.method public onMuteChange(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMuteChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->notifyListeners()V

    return-void
.end method

.method public onWiredHeadsetConnection(Z)V
    .locals 7
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onWireHeadsetConnection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_4

    move v1, v3

    :goto_0
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "headset_highest_priority_for_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_0
    if-eqz v1, :cond_8

    if-nez p1, :cond_7

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    :goto_1
    const-string v5, "headset_highest_priority_for_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v5}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    :cond_1
    const-string v5, "support_folder_hardkey"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    move v0, v3

    :goto_2
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v4

    if-nez v4, :cond_2

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v4, p1}, Lcom/android/phone/CallNotifier;->updateRingbackToneVolume(Z)V

    invoke-direct {p0, v2}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/android/phone/AudioRouter;->mIsWiredHeadsetConnected:Z

    if-eq v4, p1, :cond_3

    invoke-static {v3, v3}, Lcom/android/phone/PhoneUtils;->setVoiceCallEq(ZZ)V

    :cond_3
    iput-boolean p1, p0, Lcom/android/phone/AudioRouter;->mIsWiredHeadsetConnected:Z

    return-void

    :cond_4
    move v1, v4

    goto :goto_0

    :cond_5
    sget v2, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_a

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    :goto_4
    const-string v5, "ims_video_default_speaker_mode"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-ne v2, v5, :cond_9

    sget v5, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE_OR_SPEAKER:I

    invoke-direct {p0, v5}, Lcom/android/phone/AudioRouter;->selectWiredOrEarpieceOrSpeaker(I)I

    move-result v5

    sget v6, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v5, v6, :cond_9

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    :cond_9
    sget v5, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    :cond_a
    sget v2, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    goto :goto_4

    :cond_b
    const-string v5, "audio_path_changes_wired_hadset_connected_bluetooth"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v5, "Change audio path : WIRED_HEADSET"

    invoke-direct {p0, v5}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    goto :goto_3
.end method

.method public setAudioMode(I)V
    .locals 5
    .param p1    # I

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/AudioRouter;->selectWiredOrEarpieceOrSpeaker(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/phone/AudioRouter;->selectWiredOrEarpiece(I)I

    move-result p1

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v1

    or-int/2addr v1, p1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asking to set to a mode that is unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, p1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    invoke-direct {p0, v4}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateModeFromCurrentState()I

    move-result p1

    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an error in setting new audio mode. Resetting mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asking to turn on bluetooth when no bluetooth available. supportedModes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-eq v1, p1, :cond_6

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v1, p1, :cond_7

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const-string v1, "ims_video_default_speaker_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->saveVTSpeakerState(I)V

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsIms;->saveVoLTESpeakerState(I)V

    goto :goto_2
.end method

.method public setSpeaker(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeaker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {p0, v0}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {p0, v0}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V

    goto :goto_0
.end method
