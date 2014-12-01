.class Lcom/android/mms/ui/ComposeMessageFragment$175;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->networkWarningDialogAndSend(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$sendSimSlot:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$175;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$175;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$175;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mNetworkWarningDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15302(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$175;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$175;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$175;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$175;->val$sendSimSlot:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded(I)V

    return-void
.end method
