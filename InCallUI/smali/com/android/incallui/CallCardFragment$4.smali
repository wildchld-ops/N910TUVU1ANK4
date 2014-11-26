.class Lcom/android/incallui/CallCardFragment$4;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->updateIncomingModifyCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "handle MODIFY_CALL_PROMPT_CONFIRMED, proceed..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAudioMode()I

    move-result v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    :cond_0
    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->stopRecord()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallCardFragment;->ModifyCallDialogComplete(IZ)V

    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->launchSwitchToVTCall()V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardFragment;->enableModifyCall(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    # setter for: Lcom/android/incallui/CallCardFragment;->isUpgrading:Z
    invoke-static {v0, v3}, Lcom/android/incallui/CallCardFragment;->access$702(Lcom/android/incallui/CallCardFragment;Z)Z

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/CallCommandClient;->respondModifyCall(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setIsShowingModifyCallDialog(Z)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hideDialpadForModifyCall()V

    :cond_5
    return-void
.end method
