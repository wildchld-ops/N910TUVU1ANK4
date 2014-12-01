.class Lcom/android/phone/PhoneGlobals$5;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .param p1    # Landroid/os/Message;

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Handler : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/high16 v33, 0x7f0c0000

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v32

    if-eqz v32, :cond_1

    const-string v32, "PhoneApp"

    const-string v33, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v32, "nck_block_feature"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "1"

    const-string v33, "ril.perso_nwk_puk"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    const-string v32, "PhoneApp"

    const-string v33, "network perm blocked, do not show sim depersonal panel"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v32, "show_icc_ndp"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    const-string v32, "PhoneApp"

    const-string v33, "show sim depersonal panel"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    :sswitch_3
    const-string v32, "PhoneApp"

    const-string v33, "show sim depersonal panel- EVENT_SIM_NETWORK_SUBSET_LOCKED"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "show_icc_ndp"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    new-instance v21, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/IccCard$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCard$State;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :sswitch_4
    const-string v32, "PhoneApp"

    const-string v33, "show sim service provider depersonal panel"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "show_icc_ndp"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    new-instance v27, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v32

    const/16 v33, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Z)V

    invoke-virtual/range {v27 .. v27}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_GET_CALL_FORWARDING_STATUS simId= : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "feature_chn_duos"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    :cond_3
    :goto_1
    const/4 v12, 0x0

    if-eqz v18, :cond_4

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v32

    if-eqz v32, :cond_4

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v12

    :cond_4
    if-nez v12, :cond_6

    const-string v32, "PhoneApp"

    const-string v33, "iccRecord is null, do not send call forwarding query!!!"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    goto :goto_1

    :cond_6
    const-string v32, "PhoneApp"

    const-string v33, "handle message: EVENT_GET_CALL_FORWARDING_STATUS and Start to send the Call Forwarding Query"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/phone/PhoneGlobals;->mccmnc_final:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mccmnc_final:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_7

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mccmnc_final: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mccmnc_final:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mccmnc_final:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    # getter for: Lcom/android/phone/PhoneGlobals;->MCCMNC_CODE_CF_CHECK:[Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$1200()[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    move/from16 v17, v0

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    aget-object v19, v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mccmnc_final:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    const-string v32, "PhoneApp"

    const-string v33, "EVENT_GET_CALL_FORWARDING_STATUS - Send Call Forwarding Query"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    const/16 v34, 0x407

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    invoke-virtual/range {v33 .. v36}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    move-object/from16 v0, v18

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_7
    const-string v32, "PhoneApp"

    const-string v33, "The mccmnc_final is null"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_FORWARDING_GET_COMPLETED sim id = : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "feature_chn_duos"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    :cond_9
    :goto_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    const/4 v13, 0x0

    const-string v32, "PhoneApp"

    const-string v33, "handle message: EVENT_FORWARDING_GET_COMPLETED"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_b

    const-string v32, "PhoneApp"

    const-string v33, "We can not get the call forwarding status from network!!!"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    goto :goto_4

    :cond_b
    if-eqz v18, :cond_c

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v32

    if-eqz v32, :cond_c

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v13

    :cond_c
    if-nez v13, :cond_d

    const-string v32, "PhoneApp"

    const-string v33, "iccRecords is null, do not send call forwarding query!!!"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v8, v32

    check-cast v8, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v7, 0x0

    array-length v0, v8

    move/from16 v32, v0

    if-lez v32, :cond_0

    const/4 v10, 0x0

    :goto_5
    array-length v0, v8

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v10, v0, :cond_0

    aget-object v32, v8, v10

    if-eqz v32, :cond_e

    aget-object v32, v8, v10

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_e

    aget-object v7, v8, v10

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "The call forwarding status from network:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget v0, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    const/16 v32, 0x1

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    :cond_e
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_f
    const/16 v32, 0x1

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    goto :goto_6

    :sswitch_7
    const-string v32, "feature_lgt"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "airplane_mode_on"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    const/16 v16, 0x1

    :goto_7
    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v32, v0

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x0

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v32, v0

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v32, v0

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMICompleteSecondary(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1400(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v32, "sec_product_feature_common_dsds_support"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_12

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/internal/telephony/Phone;

    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    # invokes: Lcom/android/phone/PhoneGlobals;->onSSInfo(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1500(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/AsyncResult;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    # invokes: Lcom/android/phone/PhoneGlobals;->onSSInfoSecondary(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1600(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    const-string v33, "READY"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$1700(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v32

    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$1700(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->finish()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v32 .. v33}, Lcom/android/phone/PhoneGlobals;->access$1702(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$1800(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$1800(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v32 .. v33}, Lcom/android/phone/PhoneGlobals;->access$1802(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :sswitch_10
    const/4 v14, 0x0

    sget v32, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    sget v32, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    sget v32, Lcom/android/phone/PhoneGlobals;->mDockState:I

    const/16 v33, 0x9

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    :cond_14
    const/4 v14, 0x1

    :cond_15
    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v22

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$1900(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/WiredHeadsetManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v32

    if-nez v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2000(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/BluetoothManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v32

    if-nez v32, :cond_0

    const-string v32, "restore_spk_unplugged_dock"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_17

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->audioRouter:Lcom/android/phone/AudioRouter;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2100(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/AudioRouter;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Lcom/android/phone/AudioRouter;->setSpeaker(Z)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$1900(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/WiredHeadsetManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v32

    if-eqz v32, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2200(Lcom/android/phone/PhoneGlobals;)I

    move-result v29

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    const/16 v34, 0x10

    invoke-virtual/range {v33 .. v34}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v33

    move-object/from16 v0, v32

    move/from16 v1, v29

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_18
    const/16 v29, 0x0

    goto :goto_8

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    # invokes: Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$2300(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    # invokes: Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$2400(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lcom/android/phone/PhoneUtils;->updateRAFT()V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    # invokes: Lcom/android/phone/PhoneGlobals;->handleEventScreenOn(Z)V
    invoke-static/range {v32 .. v33}, Lcom/android/phone/PhoneGlobals;->access$2500(Lcom/android/phone/PhoneGlobals;Z)V

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    # invokes: Lcom/android/phone/PhoneGlobals;->handleEventScreenOn(Z)V
    invoke-static/range {v32 .. v33}, Lcom/android/phone/PhoneGlobals;->access$2500(Lcom/android/phone/PhoneGlobals;Z)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "surface_palm_touch"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_PALM_DOWN : value = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v31, :cond_0

    const-string v32, "feature_multisim"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1a

    const/16 v26, 0x0

    :goto_9
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v32

    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    aget-object v32, v32, v26

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v32, v0

    aget-object v32, v32, v26

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v32

    if-eqz v32, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    move-object/from16 v32, v0

    aget-object v32, v32, v26

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "com.android.phone"

    const-string v34, "PALM"

    invoke-static/range {v32 .. v34}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v32

    sget-object v33, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "com.android.phone"

    const-string v34, "PALM"

    invoke-static/range {v32 .. v34}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v32

    if-eqz v32, :cond_1b

    const-string v28, "DUAL"

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    move-object/from16 v32, v0

    const-string v33, "DUAL"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtilsCommon;->sendSecBluetoothATCommand(Landroid/bluetooth/BluetoothHeadset;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    const-string v28, "SINGLE"

    goto :goto_a

    :sswitch_19
    const-string v32, "ManualSelectionReceiver"

    const-string v33, "Selection Automatic Done "

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1a
    const-string v32, "PhoneApp"

    const-string v33, "EVENT_GET_PREFERRED_NETWORK "

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v32, "feature_lgt"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    const/16 v30, 0x0

    if-nez v3, :cond_1c

    const-string v32, "PhoneApp"

    const-string v33, "ar is null...."

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v32, v0

    if-nez v32, :cond_1d

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [I

    check-cast v32, [I

    const/16 v33, 0x0

    aget v30, v32, v33

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "get preferred network type="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v30, :pswitch_data_0

    const-string v32, "ril.roaming.networkmode"

    const-string v33, "AUTO"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "handleGetPreferredNetworkTypeResponse  set to = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "ril.roaming.networkmode"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1d
    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "get preferred network type, exception="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string v32, "ril.roaming.networkmode"

    const-string v33, "GSM"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_1
    const-string v32, "ril.roaming.networkmode"

    const-string v33, "WCDMA"

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :sswitch_1b
    # getter for: Lcom/android/phone/PhoneGlobals;->roamingToastShown:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$2600()Z

    move-result v32

    if-nez v32, :cond_0

    const-string v32, "PhoneApp"

    const-string v33, " EVENT_DATA_ROAM_ACCESS Show Toast"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->ShowDataRoamingToast()V

    const/16 v32, 0x1

    # setter for: Lcom/android/phone/PhoneGlobals;->roamingToastShown:Z
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2602(Z)Z

    goto/16 :goto_0

    :sswitch_1c
    const-string v32, "PhoneApp"

    const-string v33, " EVENT_DATA_ROAMING_DENY Notify!"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/NotificationMgr;->showAllowDataAccess()V

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/Boolean;

    const-string v32, "PhoneApp"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "EVENT_SET_PS_CHANNEL :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->setChannel(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # invokes: Lcom/android/phone/PhoneGlobals;->isGlobalPopupDisplay()Z
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2700(Lcom/android/phone/PhoneGlobals;)Z

    move-result v32

    if-eqz v32, :cond_0

    const-string v32, "PhoneApp"

    const-string v33, "GlobalNetworkSelectAlertDialog is start"

    invoke-static/range {v32 .. v33}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/content/Intent;

    const-string v32, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v32, "com.android.phone"

    const-string v33, "com.android.phone.GlobalNetworkSelectAlertDialog"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v32, 0x10000000

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x24

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v32

    if-eqz v32, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    const/16 v33, 0x24

    invoke-virtual/range {v32 .. v33}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1e
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->getDataRoamingGuardInstance()Lcom/android/phone/DataRoamingGuard;

    move-result-object v32

    if-nez v32, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingDataRoaming()V

    goto/16 :goto_0

    :sswitch_20
    new-instance v15, Landroid/content/Intent;

    const-string v32, "com.android.phone.action.ENABLE_UCE_TOGGLE"

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->callHandlerServiceProxy:Lcom/android/phone/CallHandlerServiceProxy;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2800(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/CallHandlerServiceProxy;

    move-result-object v33

    sget-object v34, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_EXIST:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v32, 0x1

    :goto_c
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallHandlerServiceProxy;->onPhotoRingStateChange(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    goto/16 :goto_0

    :cond_1f
    const/16 v32, 0x0

    goto :goto_c

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->callHandlerServiceProxy:Lcom/android/phone/CallHandlerServiceProxy;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2800(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/CallHandlerServiceProxy;

    move-result-object v33

    sget-object v34, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_CONTENT_DOWNLOADED:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v32

    if-eqz v32, :cond_20

    const/16 v32, 0x1

    :goto_d
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallHandlerServiceProxy;->onPhotoRingStateChange(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    goto/16 :goto_0

    :cond_20
    const/16 v32, 0x0

    goto :goto_d

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->callHandlerServiceProxy:Lcom/android/phone/CallHandlerServiceProxy;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2800(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/CallHandlerServiceProxy;

    move-result-object v33

    sget-object v34, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_NONE:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v32

    if-eqz v32, :cond_21

    const/16 v32, 0x1

    :goto_e
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallHandlerServiceProxy;->onPhotoRingStateChange(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "photoring_content"

    invoke-static/range {v32 .. v33}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/phone/PhotoRingMgr;->getInstance()Lcom/android/phone/PhotoRingMgr;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhotoRingMgr;->interruptDownload()V

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/phone/PhotoRingMgr;->getInstance()Lcom/android/phone/PhotoRingMgr;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lcom/android/phone/PhotoRingMgr;->deleteContentFile(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_21
    const/16 v32, 0x0

    goto :goto_e

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # getter for: Lcom/android/phone/PhoneGlobals;->callHandlerServiceProxy:Lcom/android/phone/CallHandlerServiceProxy;
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2800(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/CallHandlerServiceProxy;

    move-result-object v33

    sget-object v34, Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;->PHOTORING_MOBILE_DATA_OFF:Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    invoke-static {}, Lcom/android/phone/PhotoringUtil;->isPhotoringBlockNumber()Z

    move-result v32

    if-eqz v32, :cond_22

    const/16 v32, 0x1

    :goto_f
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallHandlerServiceProxy;->onPhotoRingStateChange(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    goto/16 :goto_0

    :cond_22
    const/16 v32, 0x0

    goto :goto_f

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->makeGoToSleepWithNoLockSound()V

    goto/16 :goto_0

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    # invokes: Lcom/android/phone/PhoneGlobals;->makeWakeup()V
    invoke-static/range {v32 .. v32}, Lcom/android/phone/PhoneGlobals;->access$2900(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    :sswitch_27
    const-string v32, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    invoke-static/range {v32 .. v32}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->sendRejectCallWithMessagePendingList()V

    goto/16 :goto_0

    :sswitch_28
    new-instance v23, Landroid/content/Intent;

    const-string v32, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v32, "cmd"

    const-string v33, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v32, "fromPhone"

    const-string v33, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals$5;->this$0:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x8 -> :sswitch_f
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_0
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_1
        0x14 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x1a -> :sswitch_19
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_18
        0x1f -> :sswitch_2
        0x21 -> :sswitch_1b
        0x22 -> :sswitch_1c
        0x23 -> :sswitch_1e
        0x24 -> :sswitch_1f
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x29 -> :sswitch_27
        0x34 -> :sswitch_9
        0x35 -> :sswitch_b
        0x3e -> :sswitch_a
        0x3f -> :sswitch_c
        0x46 -> :sswitch_d
        0x47 -> :sswitch_e
        0x5a -> :sswitch_20
        0x2bc -> :sswitch_1a
        0x321 -> :sswitch_28
        0x406 -> :sswitch_5
        0x407 -> :sswitch_6
        0x11f9 -> :sswitch_21
        0x11fa -> :sswitch_22
        0x11fb -> :sswitch_23
        0x11fc -> :sswitch_24
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
