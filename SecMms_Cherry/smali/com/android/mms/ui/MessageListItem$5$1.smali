.class Lcom/android/mms/ui/MessageListItem$5$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$5;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v1

    if-ne v1, v4, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$600(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sim-slot"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$600(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$5$1;->this$1:Lcom/android/mms/ui/MessageListItem$5;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
