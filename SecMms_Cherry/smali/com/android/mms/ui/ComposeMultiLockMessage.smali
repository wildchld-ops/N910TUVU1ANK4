.class public Lcom/android/mms/ui/ComposeMultiLockMessage;
.super Ljava/lang/Object;
.source "ComposeMultiLockMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultiLockMessage"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteUri:Landroid/net/Uri;

.field private mHasLockedMessage:Z


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mDeleteUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mDeleteLocked:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mHasLockedMessage:Z

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public updateMessage()V
    .locals 17

    const-string v2, "Mms/MultiLockMessage"

    const-string v3, "updateMessage()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    const/16 v2, 0x40

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    :goto_0
    const/16 v2, 0x16

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/16 v2, 0x15

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, v12, v13, v15, v14}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2, v12, v13, v15, v14}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mActivity:Landroid/app/Activity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->dissmissDelProgressDlg()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteAnimation(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    return-void

    :cond_6
    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    :cond_8
    add-int/lit8 v16, v16, 0x1

    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "mms"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v3, "locked"

    if-eqz v11, :cond_9

    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    const/16 v2, 0x25e5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    :cond_a
    const-string v2, "wpm"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v3, "wpm.locked"

    if-eqz v11, :cond_b

    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "im"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v3, "locked"

    if-eqz v11, :cond_d

    const/4 v2, 0x0

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_d
    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "ft"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v3, "locked"

    if-eqz v11, :cond_f

    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_f
    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "im"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v3, "locked"

    if-eqz v11, :cond_11

    const/4 v2, 0x0

    :goto_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_11
    const/4 v2, 0x1

    goto :goto_8

    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "ft"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const-string v3, "locked"

    if-eqz v11, :cond_13

    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_13
    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    cmp-long v2, v12, v9

    if-nez v2, :cond_15

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :goto_a
    const-string v3, "locked"

    if-eqz v11, :cond_16

    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_15
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_a

    :cond_16
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public updateMultiLockMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMultiLockMessage;->updateMessage()V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMultiLockMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMultiLockProgress()V

    return-void
.end method
