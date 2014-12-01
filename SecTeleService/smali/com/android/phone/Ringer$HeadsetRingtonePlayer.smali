.class Lcom/android/phone/Ringer$HeadsetRingtonePlayer;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetRingtonePlayer"
.end annotation


# instance fields
.field private mIsRinging:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mIsRinging:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/Ringer;
    .param p2    # Lcom/android/phone/Ringer$1;

    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public isRinging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mIsRinging:Z

    return v0
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mIsRinging:Z

    const-string v1, "Ringer"

    const-string v2, "HeadsetRingtonePlayer..."

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v1, "feature_skt_tphone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->getCallFilterType(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "Ringer"

    const-string v2, "TPhone RelaxMode: Don\'t Start the HeadsetRingtonePlayer."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mIsRinging:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :try_start_1
    const-string v1, "maxvolume_headset_vibration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Ringer"

    const-string v2, "ToneVolume set Max"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x9

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_4

    const-string v1, "Ringer"

    const-string v2, "HeadsetRingtonePlayer...startTone()"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    :goto_2
    iget-boolean v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mIsRinging:Z

    if-nez v1, :cond_0

    const-string v1, "Ringer"

    const-string v2, "HeadsetRingtonePlayer...already stopRingtone()"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()Z

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v1, "decrease_headset_ringtone_volume"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x9

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeadsetRingtonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-object v6, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    iput-boolean v5, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mIsRinging:Z

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x9

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_4
    const-string v1, "Ringer"

    const-string v2, "HeadsetRingtonePlayer...phone is not ringing state"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2
.end method

.method public declared-synchronized stopRingtone()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mIsRinging:Z

    const-string v2, "Ringer"

    const-string v3, "HeadsetRingtonePlayer...stopRingtone()"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_0

    const-string v1, "Ringer"

    const-string v2, "HeadsetRingtonePlayer...mToneGenerator.stopTone()"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "Ringer"

    const-string v2, "HeadsetRingtonePlayer...mToneGenerator is null"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
