.class public Lcom/android/phone/LGTUwaCallServiceMgr;
.super Ljava/lang/Object;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LGTUwaCallServiceMgr$3;,
        Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;,
        Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;,
        Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sMe:Lcom/android/phone/LGTUwaCallServiceMgr;


# instance fields
.field final mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsChangedUwaParams:Z

.field private mRmsIntentParam:Landroid/os/Bundle;

.field private mRmsVTCallIntentParam:Landroid/os/Bundle;

.field private mUwaCallModifyIntentParam:Landroid/os/Bundle;

.field private mUwaIntentParamBgCall:Landroid/os/Bundle;

.field private mUwaIntentParamFgCall:Landroid/os/Bundle;

.field private mUwaIntentParamGroupCall:Landroid/os/Bundle;

.field private mUwaIntentParamRingingCall:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/LGTUwaCallServiceMgr;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/LGTUwaCallServiceMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mIsChangedUwaParams:Z

    new-instance v0, Lcom/android/phone/LGTUwaCallServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTUwaCallServiceMgr$1;-><init>(Lcom/android/phone/LGTUwaCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/LGTUwaCallServiceMgr$2;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTUwaCallServiceMgr$2;-><init>(Lcom/android/phone/LGTUwaCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTUwaCallServiceMgr;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTUwaCallServiceMgr;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/LGTUwaCallServiceMgr;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTUwaCallServiceMgr;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LGTUwaCallServiceMgr;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Lcom/android/phone/LGTUwaCallServiceMgr;->actionConvertCall()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/LGTUwaCallServiceMgr;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTUwaCallServiceMgr;

    invoke-direct {p0}, Lcom/android/phone/LGTUwaCallServiceMgr;->actionSwitchCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/LGTUwaCallServiceMgr;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTUwaCallServiceMgr;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->actionTurnOnSpeker(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/LGTUwaCallServiceMgr;Ljava/util/ArrayList;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTUwaCallServiceMgr;
    .param p1    # Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->actionOutgoingGroupCall(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/LGTUwaCallServiceMgr;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/LGTUwaCallServiceMgr;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->actionEndCall(Ljava/lang/String;)V

    return-void
.end method

.method private actionConvertCall()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/LGTUwaCallServiceMgr;->getCalltype(Lcom/android/internal/telephony/Call;)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/phone/CallModeler;->createModifyCallResultMessage(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/android/phone/PhoneUtils;->requestModifyCall(Lcom/android/internal/telephony/Connection;Landroid/os/Message;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isLowBatt()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallModeler()Lcom/android/phone/CallModeler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/android/phone/CallModeler;->createModifyCallResultMessage(II)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/android/phone/PhoneUtils;->requestModifyCall(Lcom/android/internal/telephony/Connection;Landroid/os/Message;I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f090841

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    goto :goto_0
.end method

.method private actionEndCall(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/LGTUwaCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/LGTUwaCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method private actionOutgoingGroupCall(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->makeConfNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->getSIMNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/phone/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/phone/IMSConferenceCallMgr$State;->IDLE:Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-virtual {v1, v3, v6, v9}, Lcom/android/phone/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;Lcom/android/internal/telephony/Connection;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getDialedParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->makeConfNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/android/phone/IMSConferenceCallMgr;->prepareDial(Lcom/android/internal/telephony/Connection;)V

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->addUserToConfCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v4, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "IS_CONF_CALL"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v8}, Lcom/android/phone/IMSConferenceCallMgr;->setDirectConfCall(Z)V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private actionSwitchCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    :cond_0
    return-void
.end method

.method private actionTurnOnSpeker(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getAudioRouter()Lcom/android/phone/AudioRouter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/AudioRouter;->setSpeaker(Z)V

    :cond_0
    return-void
.end method

.method private broadcastIsSessionModifyPossibleIntent()V
    .locals 7

    iget-object v5, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    const-string v6, "state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    const-string v6, "state"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "com.uplus.agent.action.CHANGE_LTE_STATE"

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private broadcastRmsIntent()V
    .locals 13

    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_6

    move-object v0, v9

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_8

    const/4 v10, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/phone/LGTUwaCallServiceMgr;->getCalltype(Lcom/android/internal/telephony/Call;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_9

    const-string v1, "VT"

    :goto_3
    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v12, "state"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_1

    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v12, "svcType"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    if-eqz v5, :cond_a

    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v12, "state"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v12, "svcType"

    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v11, "com.lguplus.ims.action.CALL_STATE"

    iget-object v12, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    invoke-direct {p0, v11, v12}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/LGTUwaCallServiceMgr;->getCalltype(Lcom/android/internal/telephony/Call;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v11, v12, :cond_b

    const/4 v4, 0x1

    :goto_5
    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v12, "com.lguplus.ltecall.videocall.extra.IsEnableVoLTE"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v12, "com.lguplus.ltecall.extra.IS_GROUPCALL"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-ne v8, v6, :cond_4

    if-eq v7, v4, :cond_5

    :cond_4
    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v12, "com.lguplus.ltecall.videocall.extra.IsEnableVoLTE"

    invoke-virtual {v11, v12, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v12, "com.lguplus.ltecall.extra.IS_GROUPCALL"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "com.lguplus.LTECall.intent.action.IN_VTCALL"

    iget-object v12, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    invoke-direct {p0, v11, v12}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    return-void

    :cond_6
    move-object v0, v3

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_9
    const-string v1, "VOIP"

    goto :goto_3

    :cond_a
    iget-object v11, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v12, "state"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private convertToLgtCallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;
    .locals 2
    .param p1    # Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$3;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->ACTIVE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->HOLDING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->DIALING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->ALERTING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->INCOMING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->WAITING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTED:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private convertToLgtCallType(I)Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;
    .locals 1
    .param p1    # I

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VOICE_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VIDEO_SHARE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    goto :goto_0
.end method

.method private convertToLgtGroupCallState(Lcom/android/phone/IMSConferenceCallMgr$State;)Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;
    .locals 2
    .param p1    # Lcom/android/phone/IMSConferenceCallMgr$State;

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$3;->$SwitchMap$com$android$phone$IMSConferenceCallMgr$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;->NONE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;->NONE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;->INVITING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;->JOIN:Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;->LEFT:Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCalltype(Lcom/android/internal/telephony/Call;)I
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Call;

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/CallManager;->getCallType(Lcom/android/internal/telephony/Call;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "getCallType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallStateException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/LGTUwaCallServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/LGTUwaCallServiceMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/LGTUwaCallServiceMgr;->init()Lcom/android/phone/LGTUwaCallServiceMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/LGTUwaCallServiceMgr;

    goto :goto_0
.end method

.method private getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Connection;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static init()Lcom/android/phone/LGTUwaCallServiceMgr;
    .locals 4

    const-class v1, Lcom/android/phone/LGTUwaCallServiceMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/LGTUwaCallServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/LGTUwaCallServiceMgr;

    invoke-direct {v0}, Lcom/android/phone/LGTUwaCallServiceMgr;-><init>()V

    sput-object v0, Lcom/android/phone/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/LGTUwaCallServiceMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/LGTUwaCallServiceMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "LGTUwaCallServiceMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/LGTUwaCallServiceMgr;->sMe:Lcom/android/phone/LGTUwaCallServiceMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initIntentParams()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "voiceType"

    sget-object v2, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;->VOICE_CALL:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "callState"

    sget-object v2, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "address"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "disconnectReason"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "textCall"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "isGroupCall"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    const-string v1, "isVMS"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v1, "com.uplus.agent.extra.GROUPCALL_RECIPIENTS"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v1, "com.uplus.agent.extra.GROUPCALL_STATUS"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaCallModifyIntentParam:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v1, "svcType"

    const-string v2, "VOIP"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsIntentParam:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v1, "com.lguplus.ltecall.videocall.extra.IsEnableVoLTE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mRmsVTCallIntentParam:Landroid/os/Bundle;

    const-string v1, "com.lguplus.ltecall.extra.IS_GROUPCALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    sget-boolean v0, Lcom/android/phone/LGTUwaCallServiceMgr;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGTUwaCallServiceMgr"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1    # Landroid/os/AsyncResult;

    const-string v1, "onDisconnect()..."

    invoke-static {v1}, Lcom/android/phone/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V

    const-string v1, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1    # Landroid/os/AsyncResult;

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPhoneStateChanged() - fgcall state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bgcall state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ringingcall state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v5, v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "send broadcast ringingcall intent"

    invoke-static {v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v6, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v0, v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "send broadcast bgcall intent"

    invoke-static {v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v6, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v1, v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "send broadcast fgcall intent"

    invoke-static {v6}, Lcom/android/phone/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    const-string v6, "com.uplus.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/LGTUwaCallServiceMgr;->broadcastIsSessionModifyPossibleIntent()V

    invoke-direct {p0}, Lcom/android/phone/LGTUwaCallServiceMgr;->broadcastRmsIntent()V

    return-void
.end method

.method private sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send broadcast intent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/LGTUwaCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method private sendUwaCallDisconnetIntent(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "callState"

    sget-object v1, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTING:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.uplus.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "callState"

    sget-object v1, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTED:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.uplus.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "callState"

    sget-object v1, Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.uplus.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateUwaCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;)Z
    .locals 9
    .param p1    # Lcom/android/internal/telephony/Call;
    .param p2    # Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/LGTUwaCallServiceMgr;->convertToLgtCallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallState;

    move-result-object v1

    const-string v7, "callState"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eq v7, v8, :cond_0

    const-string v7, "callState"

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/LGTUwaCallServiceMgr;->getCalltype(Lcom/android/internal/telephony/Call;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/phone/LGTUwaCallServiceMgr;->convertToLgtCallType(I)Lcom/android/phone/LGTUwaCallServiceMgr$LgtCallType;

    move-result-object v2

    const-string v7, "voiceType"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eq v7, v8, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_1

    const-string v7, "voiceType"

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/LGTUwaCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v7, "address"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "address"

    invoke-virtual {p2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "textCall"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v7, v8, :cond_4

    const/4 v5, 0x1

    :goto_0
    const-string v7, "isGroupCall"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v5, :cond_3

    const-string v7, "isGroupCall"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v4, 0x1

    :cond_3
    const-string v7, "disconnectReason"

    invoke-virtual {p2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "isVMS"

    invoke-virtual {p2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return v4

    :cond_4
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public broadcastUwaGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/IMSConferenceCallMgr$State;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/phone/IMSConferenceCallMgr$State;

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/android/phone/LGTUwaCallServiceMgr;->convertToLgtGroupCallState(Lcom/android/phone/IMSConferenceCallMgr$State;)Lcom/android/phone/LGTUwaCallServiceMgr$LgtGroupCallState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v4, "com.uplus.agent.extra.GROUPCALL_RECIPIENTS"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    const-string v4, "com.uplus.agent.extra.GROUPCALL_STATUS"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "com.uplus.agent.action.CHANGE_GROUPCALL_STATUS"

    iget-object v4, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mUwaIntentParamGroupCall:Landroid/os/Bundle;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/LGTUwaCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public registerCallServiceMgr()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.uplus.agent.action.CONVERT_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.uplus.agent.action.SWITCH_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.lguplus.ltecall.ACTION_SPEAKER_ON_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.uplus.agent.action.GROUPCALL_OUTGOING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.uplus.agent.action.END_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, p0, Lcom/android/phone/LGTUwaCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/LGTUwaCallServiceMgr;->initIntentParams()V

    return-void
.end method
