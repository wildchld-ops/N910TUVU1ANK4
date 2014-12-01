.class Lcom/android/mms/ui/MessageListItem$13;
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

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x32

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v10

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v2, v10, :cond_1

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    # invokes: Lcom/android/mms/ui/MessageListItem;->isUndeliveredMsg(Lcom/android/mms/ui/MessageItem;)Z
    invoke-static {v10, v11}, Lcom/android/mms/ui/MessageListItem;->access$3000(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0539

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v10, 0x7f0c018a

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c0182

    new-instance v12, Lcom/android/mms/ui/MessageListItem$13$1;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/MessageListItem$13$1;-><init>(Lcom/android/mms/ui/MessageListItem$13;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v10

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->requiresRcs()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isStoreAndForward()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04f2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    const v10, 0x7f0c018a

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c00ef

    new-instance v12, Lcom/android/mms/ui/MessageListItem$13$3;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/MessageListItem$13$3;-><init>(Lcom/android/mms/ui/MessageListItem$13;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c00f0

    new-instance v12, Lcom/android/mms/ui/MessageListItem$13$2;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/MessageListItem$13$2;-><init>(Lcom/android/mms/ui/MessageListItem$13;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0577

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v10

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->getAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v10

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/mms/rcs/RcsChatManager;->getCapsValue(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-eqz v10, :cond_6

    invoke-static {v3, v4}, Lcom/android/mms/rcs/RcsChatManager;->isOffline(J)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04fc

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04f2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_7
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0577

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_8
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$1500(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04f2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_9
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0577

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_a
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c04f2

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_b
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$13;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListItem;->performFailedIconClick()V

    goto/16 :goto_0
.end method
