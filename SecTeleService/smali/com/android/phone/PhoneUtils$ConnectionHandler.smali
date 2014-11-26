.class Lcom/android/phone/PhoneUtils$ConnectionHandler;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneUtils$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/PhoneUtils$1;

    invoke-direct {p0}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1    # Landroid/os/Message;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/os/AsyncResult;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/phone/PhoneUtils$FgRingCalls;

    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v15}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$000(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v22

    if-eqz v22, :cond_2

    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {v15}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$000(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    # getter for: Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Lcom/android/phone/PhoneUtils$ConnectionHandler;

    move-result-object v22

    const/16 v23, 0x64

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # getter for: Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$100()Lcom/android/phone/PhoneUtils$ConnectionHandler;

    move-result-object v22

    const-wide/16 v23, 0xc8

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;
    invoke-static {v15}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$200(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const-string v22, "PhoneUtils"

    const-string v23, "DISCONNECTING time out"

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    # getter for: Lcom/android/phone/PhoneUtils$FgRingCalls;->ringing:Lcom/android/internal/telephony/Call;
    invoke-static {v15}, Lcom/android/phone/PhoneUtils$FgRingCalls;->access$200(Lcom/android/phone/PhoneUtils$FgRingCalls;)Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    :sswitch_1
    const-string v22, "ConnectionHandler: updating mute state for each connection"

    const/16 v23, 0x1

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;Z)V

    iget-object v8, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    const-string v22, "att_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mPrevState: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/phone/PhoneUtils;->mPrevState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", state: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;Z)V

    sget-object v22, Lcom/android/phone/PhoneUtils;->mPrevState:Lcom/android/internal/telephony/Call$State;

    sget-object v23, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_4

    sget-object v22, Lcom/android/phone/PhoneUtils;->mPrevState:Lcom/android/internal/telephony/Call$State;

    sget-object v23, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    :cond_4
    sget-object v22, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    sget-boolean v22, Lcom/android/phone/PhoneUtils;->mDialedVideo:Z

    if-eqz v22, :cond_5

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v22

    if-nez v22, :cond_5

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    const v23, 0x7f090843

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "%s"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->displayToastForALongTime(Ljava/lang/String;)V

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/phone/PhoneUtils;->mDialedVideo:Z

    :cond_5
    const-string v22, "support_low_battery_sound_during_call"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    sget-object v22, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    const-string v22, "PhoneUtils"

    const-string v23, "try managing alarm for low batt"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/phone/PhoneGlobals;->lowBatterySound(Z)V

    :cond_6
    sget-boolean v22, Lcom/android/phone/PhoneUtils;->mWPSRedialFlag:Z

    if-eqz v22, :cond_8

    sget-object v22, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_7

    sget-object v22, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    :cond_7
    const-string v22, "redialing WPS call..."

    const/16 v23, 0x1

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;Z)V

    new-instance v17, Landroid/content/Intent;

    const-string v22, "android.intent.action.CALL_PRIVILEGED"

    const-string v23, "tel"

    sget-object v24, Lcom/android/phone/PhoneUtils;->mWPSRedialNumber:Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v22, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/phone/PhoneUtils;->mWPSRedialFlag:Z

    const/16 v22, 0x0

    sput-object v22, Lcom/android/phone/PhoneUtils;->mWPSRedialNumber:Ljava/lang/String;

    :cond_8
    # getter for: Lcom/android/phone/PhoneUtils;->mRedialFlag:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$400()Z

    move-result v22

    if-eqz v22, :cond_a

    sget-object v22, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_9

    sget-object v22, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    :cond_9
    const-string v22, "VoLTE tc 14.2, redialing..."

    const/16 v23, 0x1

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;Z)V

    new-instance v17, Landroid/content/Intent;

    const-string v22, "android.intent.action.CALL_PRIVILEGED"

    const-string v23, "tel"

    # getter for: Lcom/android/phone/PhoneUtils;->mRedialNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$500()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v22, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    const/16 v22, 0x0

    # setter for: Lcom/android/phone/PhoneUtils;->mRedialFlag:Z
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->access$402(Z)Z

    const/16 v22, 0x0

    # setter for: Lcom/android/phone/PhoneUtils;->mRedialNumber:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->access$502(Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    const-string v22, "feature_skt_tphone"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVideoCalling()Z

    move-result v22

    if-nez v22, :cond_b

    const-string v22, "PhoneUtils"

    const-string v23, "handleMessage This is TPhone Call State - return"

    invoke-static/range {v22 .. v23}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_c
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/Call;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_c

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_c

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_d
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_e
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_e

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_10
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_10

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_10

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_11
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_12
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_12

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_13
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_14
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    invoke-interface {v13, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_14

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "connection \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' not accounted for, removing."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->access$700(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_15
    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_17

    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    :goto_6
    const-string v22, "common_volte_vt_kor"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    :cond_16
    const-string v22, "att_volte_ui"

    invoke-static/range {v22 .. v22}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    sput-object v21, Lcom/android/phone/PhoneUtils;->mPrevState:Lcom/android/internal/telephony/Call$State;

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v22

    const/16 v23, 0x0

    # invokes: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneUtils;->access$800(Lcom/android/internal/telephony/Phone;Z)V

    goto :goto_6

    :sswitch_2
    const-string v22, "ConnectionHandler: updating mute state for each connection"

    const/16 v23, 0x1

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneUtils;->access$300(Ljava/lang/String;Z)V

    const/16 v19, 0x0

    if-eqz v4, :cond_18

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/Phone;

    :cond_18
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_19
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Connection;

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_19

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_1a
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1b
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Connection;

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_1b

    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    sget-object v23, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_1c
    # getter for: Lcom/android/phone/PhoneUtils;->sConnectionMuteTable:Ljava/util/Hashtable;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$600()Ljava/util/Hashtable;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1d
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/Connection;

    invoke-interface {v14, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v22

    if-nez v22, :cond_1d

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "connection \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' not accounted for, removing."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->access$700(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_1e
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1f

    invoke-static/range {v19 .. v19}, Lcom/android/phone/PhoneUtils;->restoreMuteState(Lcom/android/internal/telephony/Phone;)Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_1f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    # invokes: Lcom/android/phone/PhoneUtils;->setMuteInternal(Lcom/android/internal/telephony/Phone;Z)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->access$800(Lcom/android/internal/telephony/Phone;Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
