.class public Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeDeleteMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeDeleteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeDeleteMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage;JLjava/lang/String;ZJ)V
    .locals 1
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Z
    .param p6    # J

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    :goto_0
    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {p1, p5}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z
    invoke-static {p1, p5}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$202(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    return-void

    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const-string v0, "im"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const-string v0, "ft"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_3
    cmp-long v0, p2, p6

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V
    .locals 0
    .param p2    # Landroid/net/Uri;
    .param p3    # Z

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z
    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$202(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->isAnimationEnable()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    const-string v12, "ril.sms.gcf-mode"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "On"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "Mms/DeleteMessage"

    const-string v13, "GCF Mode On -  DB Count Reset"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    sput v12, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveDeleteAnimation:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveDeleteAnimation:Z

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsDeleteMode()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    goto :goto_0

    :cond_4
    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->dissmissDelProgressDlg()V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$000(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    new-array v2, v12, [I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v13}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getSelectedIndex()I

    move-result v13

    aput v13, v2, v12

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v12

    new-array v2, v12, [I

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_6
    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_7
    const/16 v12, 0x40

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :goto_1
    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v12

    invoke-virtual {v12, v7, v8, v11, v10}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_b

    :cond_8
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_6

    if-lez v3, :cond_9

    new-array v9, v3, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v2, v12, v9, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->hidecheckbox()V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    :cond_9
    if-nez v3, :cond_0

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    goto/16 :goto_0

    :cond_a
    const/4 v10, -0x1

    goto :goto_1

    :cond_b
    const/16 v12, 0x15

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_d

    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_c

    iget-object v12, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # getter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {v12}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$100(Lcom/android/mms/ui/ComposeDeleteMessage;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_c
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v12, v3, -0x1

    aput v6, v2, v12

    goto :goto_2

    :cond_d
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeDeleteMessage;

    # setter for: Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeDeleteMessage;->access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z

    return-void
.end method
