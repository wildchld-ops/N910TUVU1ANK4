.class Lcom/android/mms/ui/ComposeMessageFragment$152;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$152;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$152;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$152;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$152;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ToButton;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->isDelete()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getRemoveIcon()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getRemoveIcon()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getRemoveIcon()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$152;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$152;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$152;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_0
.end method
