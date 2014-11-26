.class public Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;
.super Landroid/app/Activity;
.source "VTCMCCRejectCallWithMsg.java"

# interfaces
.implements Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;
.implements Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;


# instance fields
.field private mCall:Lcom/android/services/telephony/common/Call;

.field private mContext:Landroid/content/Context;

.field private mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

.field private mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mCall:Lcom/android/services/telephony/common/Call;

    return-void
.end method

.method private updateLayout(Z)V
    .locals 4
    .param p1    # Z

    const/16 v3, 0x8

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLayout() isIconMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectCallWithMessageContent;->setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    invoke-virtual {v0, p0}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContentIconMode$OnItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mContext:Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f040076

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "VTCMCCRejectWithMsgNumber"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: VTCMCCRejectWithMsgNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->getCurrentIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->getCurrentIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mCall:Lcom/android/services/telephony/common/Call;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: mCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0e028e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/RejectCallWithMessageContent;

    iput-object v3, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const-string v3, "reject_call_with_message_icon_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v3, p0}, Lcom/android/incallui/RejectCallWithMessageContent;->setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;)V

    :cond_1
    :goto_0
    const/high16 v0, 0x80000

    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    or-int/lit8 v0, v0, 0x2

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->addFlags(I)V

    return-void

    :cond_2
    const v3, 0x7f0e028f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    iput-object v3, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    invoke-virtual {p0}, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/RejectCallWithMsgIconModeUtils;->isIconMode(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: isIconMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContentIconMode:Lcom/android/incallui/RejectCallWithMessageContentIconMode;

    const-string v3, "iconModeItems"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Lcom/android/incallui/RejectCallWithMessageContentIconMode;->configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->updateLayout(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const-string v4, "textMsgs"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/RejectCallWithMessageContent;->configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/vt/VTCMCCRejectCallWithMsg;->mCall:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/CallCommandClient;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
