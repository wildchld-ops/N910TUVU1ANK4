.class Lcom/android/incallui/CallCardVoiceFragment$3;
.super Ljava/lang/Object;
.source "CallCardVoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardVoiceFragment;->showManageConferenceCallBtn(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVoiceFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardVoiceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVoiceFragment$3;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardVoiceFragment$3;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->manageConferenceButtonClicked()V

    iget-object v0, p0, Lcom/android/incallui/CallCardVoiceFragment$3;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # getter for: Lcom/android/incallui/CallCardVoiceFragment;->mManageConfCallBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/CallCardVoiceFragment;->access$200(Lcom/android/incallui/CallCardVoiceFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/android/incallui/CallCardVoiceFragment$3;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # getter for: Lcom/android/incallui/CallCardVoiceFragment;->mExtraVolBtn:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/incallui/CallCardVoiceFragment;->access$300(Lcom/android/incallui/CallCardVoiceFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVoiceFragment$3;->this$0:Lcom/android/incallui/CallCardVoiceFragment;

    # getter for: Lcom/android/incallui/CallCardVoiceFragment;->mExtraVolBtn:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/android/incallui/CallCardVoiceFragment;->access$300(Lcom/android/incallui/CallCardVoiceFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void
.end method
