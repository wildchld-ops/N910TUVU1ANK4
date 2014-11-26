.class Lcom/android/mms/util/HandleComposerAttachment$13$1;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

.field final synthetic val$contacts:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment$13;Lcom/android/mms/data/ContactList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->val$contacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/HandleComposerAttachment;->checkEmailBeforeMakeToButton(Lcom/android/mms/data/ContactList;)V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/mms/ui/ComposeMessageFragment;->restrictContactListener:Z

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$100(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientErrorFalg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$13$1;->this$1:Lcom/android/mms/util/HandleComposerAttachment$13;

    iget-object v0, v0, Lcom/android/mms/util/HandleComposerAttachment$13;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$300(Lcom/android/mms/util/HandleComposerAttachment;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setErrorFlagInRecipientEditor(Z)V

    :cond_0
    return-void
.end method
