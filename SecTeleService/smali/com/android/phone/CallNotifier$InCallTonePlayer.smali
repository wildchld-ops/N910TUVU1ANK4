.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mIsVideoCall:Z

.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2    # I

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mIsVideoCall:Z

    return-void
.end method

.method constructor <init>(Lcom/android/phone/CallNotifier;IZ)V
    .locals 1
    .param p2    # I
    .param p3    # Z

    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    iput-boolean p3, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mIsVideoCall:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer.run (toneId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v20 .. v22}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->acquirePartialWakeLock()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_VoiceCall_TunnigCallWaitingToneAs"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Bad toneId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    :pswitch_1
    const/16 v16, 0x16

    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->getWiredHeadsetManager()Lcom/android/phone/WiredHeadsetManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v17, 0x50

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer: WAITING :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v20 .. v22}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    const-string v20, "gsm.operator.iso-country"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v20, "ca"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v20, "dcm_callwait_tone_long_feature"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v14, 0x5208

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer.run (toneType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", toneVolume="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", toneLengthMillis="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v20

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mIsVideoCall:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v20

    if-eqz v20, :cond_1d

    const/4 v13, 0x6

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer: stream :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v20 .. v22}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    const-string v20, "common_volte_kor"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v8, v0, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const-wide/16 v20, 0x1f4

    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    new-instance v20, Landroid/media/ToneGenerator;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-direct {v0, v13, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_27

    const/16 v20, 0x5d

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    if-eqz v10, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "- InCallTonePlayer: start playing call tone="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/phone/CallNotifier;->access$2000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v6, 0x0

    :cond_1
    :goto_4
    const-string v20, "custom_waiting_tone"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "volume_waiting_tone"

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/high16 v19, 0x3f800000

    const-wide/high16 v20, 0x4000000000000000L

    add-int/lit8 v22, v9, -0x2

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v20, v0

    const/16 v21, 0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    :cond_2
    :try_start_1
    const-string v15, "situation=15;device=0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    mul-float v11, v20, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_5
    const-string v20, "use_situation_gain_for_ringbacktones"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1900(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v20

    const-string v21, "situation=12"

    invoke-virtual/range {v20 .. v21}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_6
    monitor-enter p0

    if-eqz v7, :cond_5

    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v20, v14, 0x14

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    :try_start_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    if-eqz v6, :cond_5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/ToneGenerator;->release()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/PhoneGlobals;->releasePartialWakeLock()V

    const-string v20, "feature_chn_duos"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1200(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    :goto_8
    sget-object v20, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer:calling resetAudioStateAfterDisconnect  + "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static/range {v20 .. v22}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    :cond_7
    return-void

    :cond_8
    move/from16 v17, v18

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x50

    goto/16 :goto_0

    :cond_a
    const-string v20, "feature_can_bmc"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_b

    const v14, 0x7fffffeb

    goto/16 :goto_1

    :cond_b
    const-string v20, "vzw_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x5

    move/from16 v0, v20

    if-eq v8, v0, :cond_c

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_d

    :cond_c
    const/16 v14, 0x5208

    goto/16 :goto_1

    :cond_d
    const/16 v14, 0x1db0

    goto/16 :goto_1

    :pswitch_2
    const-string v20, "ims_voice_busy_tone_play"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v8, v0, :cond_e

    const/16 v16, 0x11

    const/16 v17, 0x50

    const/16 v14, 0x1194

    goto/16 :goto_1

    :cond_e
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v8, v0, :cond_f

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v8, v0, :cond_15

    :cond_f
    const-string v20, "vzw_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/16 v16, 0x11

    :goto_9
    const-string v20, "feature_kdi"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v17, 0x50

    :goto_a
    const-string v20, "vzw_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/16 v14, 0x1194

    goto/16 :goto_1

    :cond_10
    const/16 v16, 0x60

    goto :goto_9

    :cond_11
    const/16 v17, 0x32

    goto :goto_a

    :cond_12
    const-string v20, "vzw_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    const/16 v17, 0x50

    goto :goto_a

    :cond_13
    const/16 v17, 0x32

    goto :goto_a

    :cond_14
    const/16 v14, 0x3e8

    goto/16 :goto_1

    :cond_15
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_16

    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v8, v0, :cond_16

    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v8, v0, :cond_17

    :cond_16
    const/16 v16, 0x11

    const/16 v17, 0x50

    const/16 v14, 0x1194

    goto/16 :goto_1

    :cond_17
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unexpected phone type: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    :pswitch_3
    const/16 v16, 0x12

    const/16 v17, 0x50

    const/16 v14, 0xfa0

    goto/16 :goto_1

    :pswitch_4
    const/16 v16, 0x1b

    const/16 v17, 0x50

    const/16 v14, 0xc8

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    const/16 v16, 0x5d

    const/16 v17, 0x50

    const/16 v14, 0x2ee

    goto/16 :goto_1

    :cond_18
    const/16 v16, 0x1b

    const/16 v17, 0x50

    const/16 v14, 0xc8

    goto/16 :goto_1

    :pswitch_6
    const/16 v16, 0x56

    const/16 v17, 0x50

    const/16 v14, 0x1388

    goto/16 :goto_1

    :pswitch_7
    const/16 v16, 0x26

    const/16 v17, 0x50

    const/16 v14, 0xfa0

    goto/16 :goto_1

    :pswitch_8
    const/16 v16, 0x25

    const/16 v17, 0x32

    const/16 v14, 0x1f4

    goto/16 :goto_1

    :pswitch_9
    const/16 v16, 0x5f

    const/16 v17, 0x32

    const/16 v14, 0x177

    goto/16 :goto_1

    :pswitch_a
    const/16 v16, 0x57

    const/16 v17, 0x32

    const/16 v14, 0x1388

    goto/16 :goto_1

    :pswitch_b
    const-string v20, "volte_cdma_ringback_tone"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v16, 0x23

    :goto_b
    const/16 v17, 0x50

    const v14, 0x7fffffeb

    goto/16 :goto_1

    :cond_19
    const-string v20, "feature_kor"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v16, 0x23

    goto :goto_b

    :cond_1a
    const-string v20, "sin_volte_ui"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->XSP_Voltesupported()Z

    move-result v20

    if-eqz v20, :cond_1c

    :cond_1b
    const/16 v16, 0x67

    goto :goto_b

    :cond_1c
    const/16 v16, 0x17

    goto :goto_b

    :pswitch_c
    const/16 v16, 0x15

    const/16 v17, 0x50

    const/16 v14, 0xfa0

    goto/16 :goto_1

    :pswitch_d
    const/16 v16, 0x19

    const/16 v17, 0x32

    const/16 v14, 0x3e8

    goto/16 :goto_1

    :pswitch_e
    const/16 v16, 0x63

    const/16 v17, 0x50

    const/16 v14, 0x258

    goto/16 :goto_1

    :pswitch_f
    const/16 v16, 0x64

    const/16 v17, 0x32

    const/16 v14, 0x154

    goto/16 :goto_1

    :cond_1d
    const/16 v13, 0xb

    goto/16 :goto_2

    :cond_1e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1800(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v20

    if-eqz v20, :cond_1f

    const/4 v13, 0x6

    :goto_c
    goto/16 :goto_2

    :cond_1f
    const/4 v13, 0x0

    goto :goto_c

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mIsVideoCall:Z

    move/from16 v20, v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v20, :cond_21

    const/16 v13, 0xb

    goto/16 :goto_2

    :cond_21
    const/4 v13, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_3

    :cond_22
    const/16 v20, 0x60

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_23

    const/16 v20, 0x26

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_23

    const/16 v20, 0x27

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_23

    const/16 v20, 0x25

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_23

    const/16 v20, 0x5f

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_24

    :cond_23
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/phone/CallNotifier;->access$2000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_24
    const/16 v20, 0x57

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_25

    const/16 v20, 0x56

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_26

    :cond_25
    if-eqz v10, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/phone/CallNotifier;->access$2000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_26
    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_27
    const/4 v7, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CUSTOM_WAITING_TONE: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_5

    :catch_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "USE_SITUATION_GAIN_FOR_RINGBACKTONES: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_6

    :catch_3
    move-exception v4

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "InCallTonePlayer stopped: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_7

    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v20

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    move-object/from16 v20, v0

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    goto/16 :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setVolume(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stopTone()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
