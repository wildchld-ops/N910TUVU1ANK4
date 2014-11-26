.class Lcom/android/mms/ui/ComposeMessageFragment$153;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/16 v6, 0x42

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v4

    :goto_1
    :pswitch_0
    return v3

    :sswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_1

    :sswitch_1
    const/16 v5, 0x13

    if-ne p2, v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    const/16 v5, 0x11

    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v0, 0x11

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :sswitch_2
    const/16 v4, 0x14

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12900(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :goto_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-static {v6}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getRemoveIcon()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getRemoveIcon()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getRemoveIcon()Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    :sswitch_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$153;->val$toButton:Lcom/android/mms/ui/ToButton;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
    invoke-static {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13200(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_3
        0x3e -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method
