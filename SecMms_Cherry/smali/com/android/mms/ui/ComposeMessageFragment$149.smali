.class Lcom/android/mms/ui/ComposeMessageFragment$149;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$toButton:Lcom/android/mms/ui/ToButton;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    sparse-switch p2, :sswitch_data_0

    const/4 v0, -0x1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->val$toButton:Lcom/android/mms/ui/ToButton;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x21

    if-eq v0, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v0, 0x42

    if-eq v0, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x82

    if-eq v0, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->getButtonIcon()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->getButtonIcon()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->getButtonIcon()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    const/16 v3, 0x21

    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->val$toButton:Lcom/android/mms/ui/ToButton;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x82

    if-eq v0, v5, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_5

    const/16 v4, 0x43

    if-ne p2, v4, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->isTouchMode()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v4

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWasInTouchMode:Z
    invoke-static {v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_3
    :goto_1
    move v2, v3

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->changTouchMode(Landroid/view/View;Landroid/view/View;ZZ)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_3
        0x15 -> :sswitch_4
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
