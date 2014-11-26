.class Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 115

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const-string v3, "mms"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v104

    const/16 v84, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v104

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v105

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v104

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v103

    sget-object v3, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "read"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "spam_report"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "safe_message"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v4, v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v84

    if-eqz v84, :cond_5

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v81, 0x0

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "spam_report"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v81, 0x1

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "safe_message"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const-string v3, "safe_message"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v81, 0x1

    :cond_4
    const-string v3, "read"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v103

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    if-eqz v84, :cond_6

    :goto_1
    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v7

    const/16 v8, 0x70b

    new-instance v9, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v3, 0x0

    const/4 v11, 0x1

    invoke-direct {v9, v3, v4, v11}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoreUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2000(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_7
    if-eqz v81, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v103

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v105

    move-object/from16 v1, v103

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$2200(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v85

    :try_start_2
    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v84, :cond_6

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v84, :cond_9

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    :cond_a
    const-string v3, "im"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v18, Landroid/content/ContentValues;

    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "session_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "address"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "body"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "read"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "date_sent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mSentTimeMills:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "message_type"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v106, Ljava/util/HashSet;

    invoke-direct/range {v106 .. v106}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v106

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v112, -0x1

    const/16 v83, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v8, v3, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v106

    invoke-static {v0, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/ContactList;ZZI)Lcom/android/mms/data/Conversation;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v112

    :cond_c
    const-string v3, "thread_id"

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v95

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v8}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    iget-wide v11, v8, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationFreeMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    invoke-static {v3, v4, v7, v8, v11}, Lcom/android/mms/ui/SpamMessageManager;->access$2300(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_e
    const-string v3, "ft"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const/16 v84, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->getFtByMsgId(Landroid/content/Context;Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v84

    if-eqz v84, :cond_f

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_f
    const-string v3, "file_path"

    const-string v4, "file_path"

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "session_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file_size"

    const-string v4, "file_size"

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cancel_reason"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mFreeMsgFtCancelReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "thumbnail_path"

    const-string v4, "thumbnail_path"

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "media_id"

    const-string v4, "media_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v84

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mFreeMsgFTContentType:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mFreeMsgMessageType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "address"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "status"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mStatus:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "thread_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-wide v7, v4, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "read"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v106, Ljava/util/HashSet;

    invoke-direct/range {v106 .. v106}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v106

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v112, -0x1

    const/16 v83, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v8, v3, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v106

    invoke-static {v0, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/ContactList;ZZI)Lcom/android/mms/data/Conversation;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v112

    :cond_11
    const-string v3, "thread_id"

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v114, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v114

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v95

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v8}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    iget-wide v11, v8, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v11}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v11

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mFreeMsgSessionId:Ljava/lang/String;

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationFreeMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    invoke-static {v3, v4, v7, v8, v11}, Lcom/android/mms/ui/SpamMessageManager;->access$2300(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_12
    if-eqz v84, :cond_6

    :goto_4
    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catch_1
    move-exception v85

    :try_start_4
    invoke-virtual/range {v85 .. v85}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v84, :cond_6

    goto :goto_4

    :catchall_1
    move-exception v3

    if-eqz v84, :cond_13

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v3

    :cond_14
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "teleservice_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mTeleserviceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "link_url"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getSpamReport()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "date_sent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v4, v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    const/4 v11, 0x1

    invoke-static {v4, v7, v8, v11}, Lcom/android/mms/ui/MessageUtils;->getSmsSentTime(Landroid/content/Context;JZ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v9, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v10, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v12, v3, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v14, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v7 .. v18}, Lcom/android/mms/ui/SpamMessageManager;->access$2400(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    iget-object v7, v7, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    # getter for: Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->mRestoremsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v8}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->access$2100(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    iget-wide v11, v8, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v4, v7, v8}, Lcom/android/mms/ui/SpamMessageManager;->access$2500(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_17
    const/16 v50, 0x0

    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    new-instance v77, Ljava/util/ArrayList;

    invoke-direct/range {v77 .. v77}, Ljava/util/ArrayList;-><init>()V

    new-instance v60, Ljava/util/ArrayList;

    invoke-direct/range {v60 .. v60}, Ljava/util/ArrayList;-><init>()V

    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    new-instance v69, Ljava/util/ArrayList;

    invoke-direct/range {v69 .. v69}, Ljava/util/ArrayList;-><init>()V

    new-instance v74, Ljava/util/ArrayList;

    invoke-direct/range {v74 .. v74}, Ljava/util/ArrayList;-><init>()V

    new-instance v67, Ljava/util/ArrayList;

    invoke-direct/range {v67 .. v67}, Ljava/util/ArrayList;-><init>()V

    new-instance v70, Ljava/util/ArrayList;

    invoke-direct/range {v70 .. v70}, Ljava/util/ArrayList;-><init>()V

    new-instance v79, Ljava/util/ArrayList;

    invoke-direct/range {v79 .. v79}, Ljava/util/ArrayList;-><init>()V

    new-instance v72, Ljava/util/ArrayList;

    invoke-direct/range {v72 .. v72}, Ljava/util/ArrayList;-><init>()V

    new-instance v71, Ljava/util/ArrayList;

    invoke-direct/range {v71 .. v71}, Ljava/util/ArrayList;-><init>()V

    new-instance v62, Ljava/util/ArrayList;

    invoke-direct/range {v62 .. v62}, Ljava/util/ArrayList;-><init>()V

    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    new-instance v75, Ljava/util/ArrayList;

    invoke-direct/range {v75 .. v75}, Ljava/util/ArrayList;-><init>()V

    new-instance v73, Ljava/util/ArrayList;

    invoke-direct/range {v73 .. v73}, Ljava/util/ArrayList;-><init>()V

    new-instance v68, Ljava/util/ArrayList;

    invoke-direct/range {v68 .. v68}, Ljava/util/ArrayList;-><init>()V

    new-instance v64, Ljava/util/ArrayList;

    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    new-instance v78, Ljava/util/ArrayList;

    invoke-direct/range {v78 .. v78}, Ljava/util/ArrayList;-><init>()V

    const/16 v108, 0x0

    const/16 v107, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$700(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v84

    if-eqz v84, :cond_23

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v82, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$700(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageListAdapter;->getCheckedCount()I

    move-result v108

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->getCount()I

    move-result v109

    const/16 v90, 0x0

    :goto_5
    move/from16 v0, v90

    move/from16 v1, v109

    if-ge v0, v1, :cond_23

    const/16 v93, 0x0

    const/16 v92, 0x1

    :try_start_5
    const-string v3, "transport_type"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v93

    :goto_6
    move-object/from16 v0, v84

    move/from16 v1, v93

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v111

    :try_start_6
    const-string v3, "_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v92

    :goto_7
    move-object/from16 v0, v84

    move/from16 v1, v92

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v98

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/SpamMessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$700(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageListAdapter;

    move-result-object v3

    move-wide/from16 v0, v98

    move-object/from16 v2, v111

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/mms/ui/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v82

    if-nez v82, :cond_19

    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->moveToNext()Z

    :goto_8
    add-int/lit8 v90, v90, 0x1

    goto :goto_5

    :catch_2
    move-exception v85

    const-string v3, "colsMap"

    invoke-virtual/range {v85 .. v85}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v85

    const-string v3, "colsMap"

    invoke-virtual/range {v85 .. v85}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_19
    add-int/lit8 v107, v107, 0x1

    const-string v3, "mms"

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/android/mms/util/DummyFramework$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v98

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const-string v3, "read"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v71

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Lcom/android/mms/ui/SpamMessageManager$ImExtra;

    invoke-direct {v3}, Lcom/android/mms/ui/SpamMessageManager$ImExtra;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/mms/ui/SpamMessageManager$FtExtra;

    invoke-direct {v3}, Lcom/android/mms/ui/SpamMessageManager$FtExtra;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_9
    const-string v3, "address"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "body"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "date"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v77

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v80

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "teleservice_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v74

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "link_url"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "sim_slot"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v72

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "sms"

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move-wide/from16 v0, v98

    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/ui/MessageUtils;->getSmsSentTime(Landroid/content/Context;JZ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "spam_report"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v79

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "safe_message"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v78

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-interface/range {v84 .. v84}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_8

    :cond_1f
    const-string v3, "im"

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_FREE_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v98

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const-string v3, "read"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "session_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "date_sent"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-string v3, "content_type"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v3, "imdn_message_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v3, "rcsdb_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-string v3, "user_alias"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v3, "delivered_timestamp"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-string v3, "remote_uri"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const-string v3, "service_type"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    new-instance v19, Lcom/android/mms/ui/SpamMessageManager$ImExtra;

    invoke-direct/range {v19 .. v31}, Lcom/android/mms/ui/SpamMessageManager$ImExtra;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    move-object/from16 v0, v59

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/mms/ui/SpamMessageManager$FtExtra;

    invoke-direct {v3}, Lcom/android/mms/ui/SpamMessageManager$FtExtra;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_20
    const-string v3, "ft"

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_FREE_MESSAGE_FT_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v98

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const-string v3, "read"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "session_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "bytes_transf"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "file_path"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "file_size"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "thumbnail_path"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "status"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "media_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "file_name"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "content_type"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "file_name"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    const-string v3, "content_type"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v3, "reject_reason"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    const-string v3, "chat_session_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v3, "rcsdb_id"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-string v3, "delivered_timestamp"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-string v3, "remote_uri"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const-string v3, "message_type"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    const-string v3, "user_alias"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v3, "displayed_counter"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    const-string v3, "service_type"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    new-instance v32, Lcom/android/mms/ui/SpamMessageManager$FtExtra;

    move-object/from16 v34, v22

    move-wide/from16 v37, v24

    move-wide/from16 v39, v27

    move-object/from16 v41, v29

    move-object/from16 v43, v26

    move-wide/from16 v45, v30

    invoke-direct/range {v32 .. v46}, Lcom/android/mms/ui/SpamMessageManager$FtExtra;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;ILjava/lang/String;IJ)V

    move-object/from16 v0, v58

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/mms/ui/SpamMessageManager$ImExtra;

    invoke-direct {v3}, Lcom/android/mms/ui/SpamMessageManager$ImExtra;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_21
    sget-object v3, Lcom/android/mms/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v98

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const-string v3, "read"

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v84

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v71

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v73

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Lcom/android/mms/ui/SpamMessageManager$ImExtra;

    invoke-direct {v3}, Lcom/android/mms/ui/SpamMessageManager$ImExtra;-><init>()V

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/mms/ui/SpamMessageManager$FtExtra;

    invoke-direct {v3}, Lcom/android/mms/ui/SpamMessageManager$FtExtra;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_22
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_23
    if-nez v107, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1$1;-><init>(Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_25
    const/16 v97, 0x0

    :goto_c
    move/from16 v0, v97

    move/from16 v1, v107

    if-ge v0, v1, :cond_3b

    move-object/from16 v0, v77

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Ljava/lang/String;

    const-string v3, "mms"

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, v80

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v104

    :try_start_7
    move-object/from16 v0, v104

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v105

    const/16 v103, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, v72

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v104

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v103

    :goto_d
    const/16 v81, 0x0

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_26

    move-object/from16 v0, v79

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v81, 0x1

    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v3

    if-eqz v3, :cond_27

    move-object/from16 v0, v78

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    const-string v3, "safe_message"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v81, 0x1

    :cond_27
    move-object/from16 v0, v69

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v103

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_28
    :goto_e
    add-int/lit8 v97, v97, 0x1

    goto/16 :goto_c

    :cond_29
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v104

    move-object/from16 v1, v105

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v103

    goto/16 :goto_d

    :cond_2a
    if-eqz v81, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v103

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v105

    move-object/from16 v1, v103

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformationMMS(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/SpamMessageManager;->access$2200(Lcom/android/mms/ui/SpamMessageManager;Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)V
    :try_end_7
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_e

    :catch_4
    move-exception v85

    const-string v3, "Mms/SpamMessageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS restore failed !!!! MmsException ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2c
    const-string v3, "im"

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    move-object/from16 v0, v60

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v76

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v100

    move-object/from16 v0, v69

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v52

    new-instance v18, Landroid/content/ContentValues;

    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "session_id"

    move-object/from16 v0, v71

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "body"

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date"

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "read"

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object/from16 v0, v59

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Lcom/android/mms/ui/SpamMessageManager$ImExtra;

    const-string v3, "date_sent"

    move-object/from16 v0, v94

    iget-wide v7, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mDateSent:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "content_type"

    move-object/from16 v0, v94

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mContentType:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imdn_message_id"

    move-object/from16 v0, v94

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mImdnMessageId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rcsdb_id"

    move-object/from16 v0, v94

    iget-wide v7, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mRcsDbId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "user_alias"

    move-object/from16 v0, v94

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mUserAlias:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "delivered_timestamp"

    move-object/from16 v0, v94

    iget-wide v7, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mDeliveredTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "remote_uri"

    move-object/from16 v0, v94

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mRemoteUri:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "service_type"

    move-object/from16 v0, v94

    iget-wide v7, v0, Lcom/android/mms/ui/SpamMessageManager$ImExtra;->mServiceType:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2d
    new-instance v106, Ljava/util/HashSet;

    invoke-direct/range {v106 .. v106}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v112, -0x1

    const/16 v83, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, v71

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v106

    invoke-static {v0, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/ContactList;ZZI)Lcom/android/mms/data/Conversation;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v112

    :cond_2f
    const-string v3, "thread_id"

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_e

    :cond_30
    const-string v3, "ft"

    move-object/from16 v0, v111

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    move-object/from16 v0, v60

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v76

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v100

    move-object/from16 v0, v69

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v52

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "bytes_transf"

    move-object/from16 v0, v62

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "file_path"

    move-object/from16 v0, v65

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "file_size"

    move-object/from16 v0, v66

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "thumbnail_path"

    move-object/from16 v0, v75

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "session_id"

    move-object/from16 v0, v71

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "status"

    move-object/from16 v0, v73

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "media_id"

    move-object/from16 v0, v68

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "file_name"

    move-object/from16 v0, v64

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content_type"

    move-object/from16 v0, v63

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "date"

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "read"

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v0, v58

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Lcom/android/mms/ui/SpamMessageManager$FtExtra;

    const-string v3, "file_name"

    move-object/from16 v0, v86

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type"

    move-object/from16 v0, v86

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mContentType:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "reject_reason"

    move-object/from16 v0, v86

    iget v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mRejectReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "chat_session_id"

    move-object/from16 v0, v86

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mChatSessionId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rcsdb_id"

    move-object/from16 v0, v86

    iget-wide v7, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mRcsDbId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "delivered_timestamp"

    move-object/from16 v0, v86

    iget-wide v7, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mDeliveredTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "remote_uri"

    move-object/from16 v0, v86

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mRemoteUri:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "message_type"

    move-object/from16 v0, v86

    iget v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mMessageType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "user_alias"

    move-object/from16 v0, v86

    iget-object v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mUserAlias:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "displayed_counter"

    move-object/from16 v0, v86

    iget v4, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mDisplayCounter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "service_type"

    move-object/from16 v0, v86

    iget-wide v7, v0, Lcom/android/mms/ui/SpamMessageManager$FtExtra;->mServiceType:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_31
    new-instance v106, Ljava/util/HashSet;

    invoke-direct/range {v106 .. v106}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v106

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v112, -0x1

    const/16 v83, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, v71

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v106

    invoke-static {v0, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/ContactList;ZZI)Lcom/android/mms/data/Conversation;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v112

    :cond_33
    const-string v3, "thread_id"

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v114, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v114

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v95

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    if-eqz v95, :cond_28

    invoke-static/range {v95 .. v95}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v88

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->URI_FILE:Landroid/net/Uri;

    move-wide/from16 v0, v88

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v87

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v68

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Ljava/lang/Long;

    const-string v3, "tel_cp_file_uri"

    invoke-virtual/range {v87 .. v87}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.orca.freemessage/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v102

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SpamMessageManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageProperties$MediaColumns;->CONTENT_MEDIA_URI:Landroid/net/Uri;

    invoke-virtual/range {v102 .. v102}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    new-instance v96, Landroid/content/Intent;

    const-string v3, "com.sec.orca.freemessage.intent.ACTION_DOWNLOAD_THUMBNAIL"

    move-object/from16 v0, v96

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_media_uri"

    move-object/from16 v0, v96

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    move-object/from16 v0, v96

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/SpamMessageManager;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_e

    :cond_34
    move-object/from16 v0, v60

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    move-object/from16 v0, v61

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v76

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v100

    move-object/from16 v0, v69

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v52

    move-object/from16 v0, v74

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v91

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_35

    move-object/from16 v0, v72

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v50

    :cond_35
    move-object/from16 v0, v67

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v3

    if-eqz v3, :cond_38

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "teleservice_id"

    invoke-static/range {v91 .. v91}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "link_url"

    move-object/from16 v0, v18

    move-object/from16 v1, v110

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date_sent"

    move-object/from16 v0, v70

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_36

    move-object/from16 v0, v79

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_36
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v3

    if-eqz v3, :cond_37

    move-object/from16 v0, v78

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    const-string v3, "safe_message"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v45

    sget-object v46, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/16 v49, 0x0

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    const/16 v53, 0x0

    const-wide/16 v54, -0x1

    move-object/from16 v56, v18

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v45 .. v56}, Lcom/android/mms/ui/SpamMessageManager;->access$2400(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    :goto_f
    if-nez v52, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->BroadcastingLockscreenHoverInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/ui/SpamMessageManager;->access$2500(Lcom/android/mms/ui/SpamMessageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_e

    :cond_38
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "teleservice_id"

    invoke-static/range {v91 .. v91}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "link_url"

    move-object/from16 v0, v18

    move-object/from16 v1, v110

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, v79

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    const-string v3, "spam_report"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_39
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSafeMessage()Z

    move-result v3

    if-eqz v3, :cond_3a

    move-object/from16 v0, v78

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    const-string v3, "safe_message"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1400(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v45

    sget-object v46, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/16 v49, 0x0

    invoke-static/range {v100 .. v101}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    const/16 v53, 0x0

    const-wide/16 v54, -0x1

    move-object/from16 v56, v18

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->addMessageToUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;
    invoke-static/range {v45 .. v56}, Lcom/android/mms/ui/SpamMessageManager;->access$2400(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;IZJLandroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_f

    :cond_3b
    const/16 v90, 0x0

    :goto_10
    move/from16 v0, v90

    move/from16 v1, v107

    if-ge v0, v1, :cond_3f

    move-object/from16 v0, v80

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    if-eqz v14, :cond_3e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mQueryHandler:Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1900(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;

    move-result-object v11

    const/16 v12, 0x70b

    new-instance v13, Lcom/android/mms/ui/DeleteInfo;

    const-wide/16 v7, 0x0

    add-int/lit8 v3, v107, -0x1

    move/from16 v0, v90

    if-ne v0, v3, :cond_3d

    const/4 v3, 0x1

    :goto_11
    invoke-direct {v13, v7, v8, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/mms/ui/SpamMessageManager$MessageListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3c
    :goto_12
    add-int/lit8 v90, v90, 0x1

    goto :goto_10

    :cond_3d
    const/4 v3, 0x0

    goto :goto_11

    :cond_3e
    add-int/lit8 v3, v107, -0x1

    move/from16 v0, v90

    if-ne v0, v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener$1;->this$1:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    # getter for: Lcom/android/mms/ui/SpamMessageManager;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/SpamMessageManager;->access$1800(Lcom/android/mms/ui/SpamMessageManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    :cond_3f
    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v80 .. v80}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_b
.end method
