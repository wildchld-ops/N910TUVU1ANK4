.class Lcom/android/incallui/CallCardFragment$CallCardFragmentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCardFragmentBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$CallCardFragmentBroadcastReceiver;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallCardFragment;Lcom/android/incallui/CallCardFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/incallui/CallCardFragment;
    .param p2    # Lcom/android/incallui/CallCardFragment$1;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment$CallCardFragmentBroadcastReceiver;-><init>(Lcom/android/incallui/CallCardFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const-string v2, "com.android.incallui.ACTION_MODIFYCALL_DIALOG_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ACTION_MODIFYCALL_DIALOG_COMPLETE"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$CallCardFragmentBroadcastReceiver;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/CallCardFragment;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "- DISMISSING mModifyCallPromptDialog."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$CallCardFragmentBroadcastReceiver;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v2, v2, Lcom/android/incallui/CallCardFragment;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$CallCardFragmentBroadcastReceiver;->this$0:Lcom/android/incallui/CallCardFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/incallui/CallCardFragment;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$CallCardFragmentBroadcastReceiver;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2, v4}, Lcom/android/incallui/CallCardPresenter;->setIsShowingModifyCallDialog(Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/CallCommandClient;->respondModifyCall(IZ)V

    :cond_1
    return-void
.end method
