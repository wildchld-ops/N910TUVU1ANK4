.class Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MultiSimMobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimMobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MultiSimMobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;)V
    .locals 0

    iput-object p1, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    const-string v12, "simSlot"

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v12, "persist.sys.dataprefer.simid"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v13, "mms"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "ril.datacross.simid"

    const/4 v13, -0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v12, -0x1

    if-eq v3, v12, :cond_0

    move v4, v3

    :cond_0
    if-eq v9, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkType()I

    move-result v6

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v6, v11}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    if-eq v6, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v13, 0x70003

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v15, v15, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v13, v7, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    const-class v12, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v13, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v12, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v13, "networkRoaming"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v12, "networkUnvailable"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v12, v10, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iput-object v10, v12, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v12, Landroid/net/MultiSimMobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v12}, Landroid/net/MultiSimMobileDataStateTracker;->isTeardownRequested()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    iput-object v12, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "CONNECTED event did not supply link properties."

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    iput-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "linkCapabilities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkCapabilities;

    iput-object v12, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "CONNECTED event did not supply link capabilities."

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Landroid/net/LinkCapabilities;

    invoke-direct {v13}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v12, "linkPropertiesChanged"

    invoke-static {v8, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/LinkProperties;

    iput-object v12, v13, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v13, "No link property in LINK_PROPERTIES change event."

    invoke-virtual {v12, v13}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v13, Landroid/net/LinkProperties;

    invoke-direct {v13}, Landroid/net/LinkProperties;-><init>()V

    iput-object v13, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v8, v14}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v13, 0x70001

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v12, v13, v8, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
