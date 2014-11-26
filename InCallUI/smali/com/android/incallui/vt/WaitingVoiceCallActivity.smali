.class public Lcom/android/incallui/vt/WaitingVoiceCallActivity;
.super Landroid/app/Activity;
.source "WaitingVoiceCallActivity.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# instance fields
.field AcceptByVoiceCallNumber:Ljava/lang/String;

.field bld:Landroid/app/AlertDialog;

.field final mFallbackWaitingTime:J

.field myTimerTask:Ljava/util/TimerTask;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->mFallbackWaitingTime:J

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->bld:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->myTimerTask:Ljava/util/TimerTask;

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->timer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->AcceptByVoiceCallNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method automaticAccept(Lcom/android/services/telephony/common/Call;)V
    .locals 6
    .param p1    # Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x0

    const-string v3, "automatic_accept"

    invoke-static {v3, v5}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "automaticAccept: automatic_accept ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RingingCallnumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AcceptByVoiceCallNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->AcceptByVoiceCallNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->AcceptByVoiceCallNumber:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "automaticAccept: accept voice call..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method cancelAndDestroy()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->myTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->timer:Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->bld:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->bld:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1    # Lcom/android/incallui/CallList;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "vt_cmcc_accept_by_voicecall"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "AcceptByVoiceCallNumber"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->AcceptByVoiceCallNumber:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: AcceptByVoiceCallNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->AcceptByVoiceCallNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x80000

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x2

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901a3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09002a

    new-instance v4, Lcom/android/incallui/vt/WaitingVoiceCallActivity$1;

    invoke-direct {v4, p0}, Lcom/android/incallui/vt/WaitingVoiceCallActivity$1;-><init>(Lcom/android/incallui/vt/WaitingVoiceCallActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->bld:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/incallui/vt/WaitingVoiceCallActivity$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/vt/WaitingVoiceCallActivity$2;-><init>(Lcom/android/incallui/vt/WaitingVoiceCallActivity;)V

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->myTimerTask:Ljava/util/TimerTask;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->timer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->myTimerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1    # Lcom/android/services/telephony/common/Call;

    return-void
.end method

.method public onIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/Call;

    const-string v0, "onIncomingCall"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->automaticAccept(Lcom/android/services/telephony/common/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->cancelAndDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const-string v0, "onPause()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/WaitingVoiceCallActivity;->cancelAndDestroy()V

    return-void
.end method
