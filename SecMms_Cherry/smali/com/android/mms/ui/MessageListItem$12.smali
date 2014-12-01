.class Lcom/android/mms/ui/MessageListItem$12;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/16 v7, 0x22

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_2

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c04f2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0c018a

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c018e

    new-instance v8, Lcom/android/mms/ui/MessageListItem$12$2;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessageListItem$12$2;-><init>(Lcom/android/mms/ui/MessageListItem$12;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0183

    new-instance v8, Lcom/android/mms/ui/MessageListItem$12$1;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessageListItem$12$1;-><init>(Lcom/android/mms/ui/MessageListItem$12;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mIndicatorIcon:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/mms/ui/MessageListItem;->access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/mms/ui/MessageListItem$12$3;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessageListItem$12$3;-><init>(Lcom/android/mms/ui/MessageListItem$12;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v6, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->performFailedIconClick()V

    goto/16 :goto_0
.end method
