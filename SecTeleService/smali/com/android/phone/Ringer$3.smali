.class Lcom/android/phone/Ringer$3;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1    # Landroid/os/Message;

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRingHandler: msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v5, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v2, :cond_7

    invoke-virtual {p0, v8}, Lcom/android/phone/Ringer$3;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creating ringtone: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$400(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget v2, p1, Landroid/os/Message;->what:I

    const-wide/16 v5, 0xfa0

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/phone/Ringer$3;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mActiveSimId:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)I

    move-result v2

    if-eq v3, v2, :cond_3

    :cond_2
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mActiveSimId:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$800(Lcom/android/phone/Ringer;)I

    move-result v2

    if-ne v3, v2, :cond_c

    :cond_3
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$900(Lcom/android/phone/Ringer;)I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri2:Landroid/net/Uri;

    invoke-static {v2, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    :cond_4
    :goto_1
    const-string v2, "support_safetycare"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->isSafetyAssistanceMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v5, "mRingHandler: play emergency mode ringtone"

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v5, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/raw/low_power_ringtone"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v5, "mRingHandler: emergencyRingtoneUri is null"

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v5, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v5

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/Ringer$3;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iput-object v1, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    :cond_6
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_7
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v2, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/phone/Ringer$3;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v2}, Lcom/android/phone/Ringer$VibratorThread;->stopThread()V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->cancel()V

    :cond_8
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v3, :cond_10

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mIsRingRepeat:Z
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1000(Lcom/android/phone/Ringer;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->setRepeat(Z)V

    :goto_3
    const-string v2, "ringtone_escalating"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mIsRingEscalating:Z
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1100(Lcom/android/phone/Ringer;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0, v9}, Lcom/android/phone/Ringer$3;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    # setter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v2, v5}, Lcom/android/phone/Ringer;->access$1202(Lcom/android/phone/Ringer;I)I

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRingHandler: getStreamVolume - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v6}, Lcom/android/phone/Ringer;->access$1200(Lcom/android/phone/Ringer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v5, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v9, v2, v3}, Lcom/android/phone/Ringer$3;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_4
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    iget-object v3, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1400(Lcom/android/phone/Ringer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v2, v4, v5}, Lcom/android/phone/Ringer;->access$1402(Lcom/android/phone/Ringer;J)J

    :cond_a
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_b
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$900(Lcom/android/phone/Ringer;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v6, v6, Lcom/android/phone/Ringer;->mCustomRingtoneUri2:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$900(Lcom/android/phone/Ringer;)I

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v2, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRingHandler: ---------01 + r is null ? -------"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_d

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$400(Ljava/lang/String;)V

    if-nez v1, :cond_4

    new-instance v1, Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    goto/16 :goto_1

    :cond_d
    move v2, v4

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingtoneHighlightSec:I
    invoke-static {v5}, Lcom/android/phone/Ringer;->access$900(Lcom/android/phone/Ringer;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v6, v6, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v5, "mRingHandler: RingtoneManager.getRingtone(emergencyMode) is null"

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v5, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_10
    invoke-virtual {v1, v4}, Landroid/media/Ringtone;->setRepeat(Z)V

    goto/16 :goto_3

    :cond_11
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v4, "mRingHandler: has RETURN_ORIGIN_VOLUME message"

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_12
    const-string v2, "extra_ringer"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1300(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/ExtraRinger;->startExtraRinger()V

    goto/16 :goto_4

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v4, "mRingHandler: PLAY_TTS..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;

    move-result-object v3

    # setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v2, v3}, Lcom/android/phone/Ringer;->access$1502(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1600(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1600(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v4, "mRingHandler: PLAY_TTS_WITH_STRING..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v5, " "

    invoke-static {v4, v3, v5}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v3

    # setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v2, v3}, Lcom/android/phone/Ringer;->access$1502(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1600(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1600(Lcom/android/phone/Ringer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v4, "mRingHandler: STOP_RING..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/Ringtone;

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v4, "Executing r.stop "

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const-string v4, "Executed r.stop"

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    :goto_6
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1500(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1500(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;
    invoke-static {v2, v3}, Lcom/android/phone/Ringer;->access$1502(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;

    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/Ringer$3;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    goto :goto_6

    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RETURN_ORIGIN_VOLUME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v6}, Lcom/android/phone/Ringer;->access$1200(Lcom/android/phone/Ringer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v5, v3}, Lcom/android/phone/Ringer;->access$700(Lcom/android/phone/Ringer;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$1200(Lcom/android/phone/Ringer;)I

    move-result v3

    const-string v2, "extra_ringer"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/Ringer$3;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mExtraRinger:Lcom/android/phone/ExtraRinger;
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$1300(Lcom/android/phone/Ringer;)Lcom/android/phone/ExtraRinger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/ExtraRinger;->startExtraRinger()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
