.class Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChanteSmsToMmsDialogListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field newText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->newText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->allowToChange:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->newText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->addedCount:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9200(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setTextBody(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->allowToChange:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->newText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setTextBody(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ChanteSmsToMmsDialogListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
