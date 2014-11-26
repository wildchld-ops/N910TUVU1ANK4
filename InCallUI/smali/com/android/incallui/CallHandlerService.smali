.class public Lcom/android/incallui/CallHandlerService;
.super Landroid/app/Service;
.source "CallHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallHandlerService$MainHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private final mBinder:Lcom/android/services/telephony/common/ICallHandlerService$Stub;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mHandlerInitLock:Ljava/lang/Object;

.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mMainHandler:Landroid/os/Handler;

.field private mServiceStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mHandlerInitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    new-instance v0, Lcom/android/incallui/CallHandlerService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallHandlerService$1;-><init>(Lcom/android/incallui/CallHandlerService;)V

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mBinder:Lcom/android/services/telephony/common/ICallHandlerService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/incallui/CallHandlerService;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallHandlerService;Landroid/os/Message;)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallHandlerService;
    .param p1    # Landroid/os/Message;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallHandlerService;->executeMessage(Landroid/os/Message;)V

    return-void
.end method

.method private doChangeInContent(I)V
    .locals 3
    .param p1    # I

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "doChangeInContent"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/rcs/RcsShareUI;->checkIfCapableOfRcsFileTransfer(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->setTransferFileOption(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setUpRcsCallCard(Lcom/android/services/telephony/common/Call;)V

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private doStart(Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/ICallCommandService;

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "doStart"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->setService(Lcom/android/services/telephony/common/ICallCommandService;)V

    iget-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "Starting a service before another one is completed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/CallHandlerService;->doStop()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallPresenter;->setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    return-void
.end method

.method private executeMessage(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x19

    if-le v3, v6, :cond_0

    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v6, "Cannot handle message larger than LARGEST_MSG_ID."

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    if-nez v3, :cond_2

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x9

    if-eq v3, v6, :cond_2

    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System not initialized.  Ignoring message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/rcs/RcsShareUI;->disconnect(Landroid/content/Context;)V

    :cond_3
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_UPDATE_CALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4, v3}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/services/telephony/common/Call;)V

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallHandlerService;->doStopWithoutServiceDisconnection()V

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_UPDATE_MULTI_CALL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v5, v3}, Lcom/android/incallui/CallList;->onUpdate(Ljava/util/List;)V

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/android/incallui/CallCommandClient;->answerMessage(IZ)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_FORCE_UPDATE_MULTI_CALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/android/incallui/CallList;->onUpdate(Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->updateCallGUI()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_INCOMING_CALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v3, v4}, Lcom/android/incallui/CallList;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v3, "reject_call_with_message_icon_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/AbstractMap$SimpleEntry;

    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconmode, ON_INCOMING_CALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v3, v4}, Lcom/android/incallui/CallList;->onIncomingIconMode(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v4, "IconMode is not supported! Don\'t run here!"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_6
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_DISCONNECT_CALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4, v3}, Lcom/android/incallui/CallList;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.rcs.intent.action.END_SHARING_SERVICE_DIALOG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallHandlerService;->doStopWithoutServiceDisconnection()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/incallui/InCallPresenter;->onPostDialCharWait(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v6, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON_AUDIO_MODE: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", muted ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v4, :cond_7

    :goto_2
    invoke-virtual {v3, v6, v4}, Lcom/android/incallui/AudioModeProvider;->onAudioModeChange(IZ)V

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2

    :pswitch_9
    sget-object v6, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON_VP_MODE, voicePrivacyState ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_9

    :goto_4
    invoke-virtual {v3, v4}, Lcom/android/incallui/AudioModeProvider;->onVoicePrivacyModeChange(Z)V

    goto/16 :goto_0

    :cond_8
    move v3, v5

    goto :goto_3

    :cond_9
    move v4, v5

    goto :goto_4

    :pswitch_a
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_SUPPORTED_AUDIO_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/AudioModeProvider;->onSupportedAudioModeChange(I)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ON_BRING_TO_FOREGROUND"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_a

    :goto_5
    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto :goto_5

    :pswitch_c
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v6, "ON_BRING_TO_FOREGROUND_IGNORE_STATE"

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_b

    :goto_6
    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->bringToForegroundIgnoreState(Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_6

    :pswitch_d
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v4, "ON_ANSWER_RINGING_CALL"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    goto/16 :goto_0

    :pswitch_e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/services/telephony/common/ICallCommandService;

    invoke-direct {p0, v3}, Lcom/android/incallui/CallHandlerService;->doStart(Lcom/android/services/telephony/common/ICallCommandService;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/android/incallui/CallHandlerService;->doStop()V

    goto/16 :goto_0

    :pswitch_10
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/incallui/InCallPresenter;->onPostDialCharPause(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/incallui/InCallPresenter;->onPostDialCharPauseComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getIncallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v6, "ON_MODIFY_CALL : InCallActivity is not ready"

    invoke-static {v3, v6, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v3, v5}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_c
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_d

    :goto_7
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v3}, Lcom/android/incallui/CallHandlerService;->onModifyCall(ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_7

    :pswitch_13
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/android/services/telephony/common/PhotoringCommon;->convertToPhotoringMTState(I)Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_CHANGE_IN_CONTENT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/android/incallui/CallHandlerService;->doChangeInContent(I)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v3, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v6, "ON_HOLD_CALL_STATE_CHANGE"

    invoke-static {v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_e

    :goto_8
    invoke-direct {p0, v4}, Lcom/android/incallui/CallHandlerService;->onHoldCallStateChange(Z)V

    goto/16 :goto_0

    :cond_e
    move v4, v5

    goto :goto_8

    :pswitch_16
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->onEmergencyModeChange(I)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_f

    :goto_9
    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->onWBModeChange(Z)V

    goto/16 :goto_0

    :cond_f
    move v4, v5

    goto :goto_9

    :pswitch_18
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_10

    :goto_a
    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->onHdVoiceStatusChange(Z)V

    goto/16 :goto_0

    :cond_10
    move v4, v5

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_5
        :pswitch_15
        :pswitch_11
        :pswitch_9
        :pswitch_c
        :pswitch_17
        :pswitch_3
        :pswitch_0
        :pswitch_18
        :pswitch_d
        :pswitch_16
    .end packed-switch
.end method

.method private onHoldCallStateChange(Z)V
    .locals 3
    .param p1    # Z

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoldCallStateChange - isHoldCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onHoldCallStateChange(Z)V

    :cond_0
    return-void
.end method

.method private onModifyCall(ZILjava/lang/String;)V
    .locals 3
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModifyCall - isIncoming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/InCallPresenter;->onModifyCall(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doStop()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "doStop"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    iput-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->tearDown()V

    iput-object v2, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iput-object v2, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    goto :goto_0
.end method

.method public doStopWithoutServiceDisconnection()V
    .locals 2

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "doStopWithNoServiceDisconnect"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1    # Landroid/content/Intent;

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mBinder:Lcom/android/services/telephony/common/ICallHandlerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mHandlerInitLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallHandlerService$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallHandlerService$MainHandler;-><init>(Lcom/android/incallui/CallHandlerService;)V

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1    # Landroid/content/Intent;

    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    return v0
.end method
