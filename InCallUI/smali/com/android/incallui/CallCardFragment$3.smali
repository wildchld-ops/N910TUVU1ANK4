.class Lcom/android/incallui/CallCardFragment$3;
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

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "handle MODIFY_CALL_PROMPT_CANCELED!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment;->mModifyCallPromptDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/CallCardFragment;->ModifyCallDialogComplete(IZ)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->respondModifyCall(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$3;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setIsShowingModifyCallDialog(Z)V

    return-void
.end method
