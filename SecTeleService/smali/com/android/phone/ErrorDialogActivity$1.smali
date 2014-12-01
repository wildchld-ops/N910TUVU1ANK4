.class Lcom/android/phone/ErrorDialogActivity$1;
.super Landroid/os/Handler;
.source "ErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ErrorDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$1;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1    # Landroid/os/Message;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "EVENT_ECMP_STATE_CHANGED"

    invoke-static {v13, v14}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "common_volte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ims registered"

    invoke-static {v13, v14}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ErrorDialogActivity$1;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/phone/ErrorDialogActivity;->access$100(Lcom/android/phone/ErrorDialogActivity;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    const-string v13, "sec_product_feature_common_dsds_support"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v13}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v5

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_SERVICE_STATE_CHANGED simId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM_SLOT_1 : ServiceState "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    iget-object v15, v15, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM_SLOT_2 : ServiceState "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    iget-object v15, v15, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v9, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_0

    :cond_1
    const/4 v13, 0x1

    if-ne v9, v13, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_0

    :cond_2
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ErrorDialogActivity$1;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/phone/ErrorDialogActivity;->access$100(Lcom/android/phone/ErrorDialogActivity;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ErrorDialogActivity$1;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/phone/ErrorDialogActivity;->access$200(Lcom/android/phone/ErrorDialogActivity;)Landroid/app/ProgressDialog;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ErrorDialogActivity$1;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/phone/ErrorDialogActivity;->access$200(Lcom/android/phone/ErrorDialogActivity;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_0

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "STATE_IN_SERVICE : start call "

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ErrorDialogActivity$1;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13}, Lcom/android/phone/ErrorDialogActivity;->access$200(Lcom/android/phone/ErrorDialogActivity;)Landroid/app/ProgressDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/ErrorDialogActivity$1;->this$0:Lcom/android/phone/ErrorDialogActivity;

    const/4 v14, 0x0

    # setter for: Lcom/android/phone/ErrorDialogActivity;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v13, v14}, Lcom/android/phone/ErrorDialogActivity;->access$202(Lcom/android/phone/ErrorDialogActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v13}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v13, "android.phone.extra.CALL_DOMAIN"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v13, "android.phone.extra.CALL_TYPE"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v13, 0x1

    if-ne v2, v13, :cond_b

    const/4 v13, 0x3

    if-ne v3, v13, :cond_b

    const-string v13, "videocall"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    :goto_1
    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v13, "feature_multisim"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v13}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v5

    const-string v13, "simSlot"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "simSlot"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    :cond_5
    :goto_2
    const/4 v10, 0x0

    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v13

    if-ge v10, v13, :cond_7

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simSlot : ServiceState "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    iget-object v15, v15, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v15, v15, v10

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    const-string v13, "phone"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    if-eqz v7, :cond_5

    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    goto :goto_2

    :catch_0
    move-exception v4

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ITelephony threw RemoteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    if-nez v11, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_0

    :cond_8
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-eqz v13, :cond_2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v12, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    iget-object v13, v13, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v13}, Lcom/android/phone/CallController;->getIntentOfOriginCall()Landroid/content/Intent;

    move-result-object v5

    const/4 v1, 0x0

    if-eqz v5, :cond_a

    const-string v13, "common_volte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "android.phone.extra.CALL_TYPE"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isIMSRegistered()Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_0

    :cond_b
    const-string v13, "common_volte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "android.phone.extra.CALL_TYPE"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    const-string v13, "common_volte_vt_kor"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    :try_start_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "STATE_IN_SERVICE : start call number "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v8, :cond_c

    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    const-string v14, "tel"

    const/4 v15, 0x0

    invoke-static {v14, v8, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :cond_c
    :goto_4
    const-string v13, "videocall"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    :catch_1
    move-exception v4

    # getter for: Lcom/android/phone/ErrorDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/ErrorDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VoiceMailNumberMissingException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
