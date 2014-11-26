.class Lcom/android/mms/oem/AutoSendingTestActivity$3;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/oem/AutoSendingTestActivity;->showDialogPassword(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

.field final synthetic val$editField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$3;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    iput-object p2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$3;->val$editField:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$3;->val$editField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guava"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;
    invoke-static {}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$500()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    # setter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mDialogPassword:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$502(Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/mms/oem/AutoSendingTestActivity$3;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$600(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
