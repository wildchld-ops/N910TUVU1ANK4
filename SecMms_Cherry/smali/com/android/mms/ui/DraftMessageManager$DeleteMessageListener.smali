.class Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mbIsDeleteLockedMsg:Z

.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->deleteMessage(Landroid/net/Uri;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/DraftMessageManager;->access$2000(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/DraftMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v10, 0x0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v24

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v24

    if-ge v14, v0, :cond_9

    const/16 v18, 0x0

    const/16 v17, 0x1

    const/16 v15, 0x16

    const/16 v16, 0x15

    :try_start_0
    const-string v3, "transport_type"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    :goto_2
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    :try_start_1
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    :goto_3
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    :try_start_2
    const-string v3, "group_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v15

    :goto_4
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    :try_start_3
    const-string v3, "locked"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v16

    :goto_5
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v23, 0x1

    :goto_6
    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    if-nez v3, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_0
    move-exception v13

    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v13

    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v13

    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v13

    const-string v3, "colsMap"

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    const/16 v23, 0x0

    goto :goto_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v21

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/DraftMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const-string v3, "mms"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    :goto_8
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    :cond_5
    const-string v3, "wpm"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_8

    :cond_6
    const-string v3, "im"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_8

    :cond_7
    cmp-long v3, v21, v19

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_8

    :cond_8
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v21

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_8

    :cond_9
    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$1700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$1700(Lcom/android/mms/ui/DraftMessageManager;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    if-le v12, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    const/4 v14, 0x0

    :goto_9
    if-ge v14, v12, :cond_10

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mQueryHandler:Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2200(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;

    move-result-object v3

    const/16 v4, 0x70a

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v26, 0x0

    add-int/lit8 v7, v12, -0x1

    if-ne v14, v7, :cond_d

    const/4 v7, 0x1

    :goto_a
    move-wide/from16 v0, v26

    invoke-direct {v5, v0, v1, v7}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->mbIsDeleteLockedMsg:Z

    if-eqz v7, :cond_e

    const/4 v7, 0x0

    :goto_b
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/DraftMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    :cond_e
    const-string v7, "locked=0"

    goto :goto_b

    :cond_f
    add-int/lit8 v3, v12, -0x1

    if-ne v14, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/DraftMessageManager;->access$2100(Lcom/android/mms/ui/DraftMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_c

    :cond_10
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method
