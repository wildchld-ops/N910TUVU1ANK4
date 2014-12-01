.class Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

.field final synthetic val$mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->val$mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->val$mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->val$mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v1

    if-ne v1, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->val$mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sim-slot"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->val$mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;->this$1:Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    # getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method
