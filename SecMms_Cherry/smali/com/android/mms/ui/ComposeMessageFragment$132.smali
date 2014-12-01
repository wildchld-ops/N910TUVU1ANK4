.class Lcom/android/mms/ui/ComposeMessageFragment$132;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentLayout(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic val$selectPosition:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->val$selectPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->val$selectPosition:I

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10300(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/AttachmentModel;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$132;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method
