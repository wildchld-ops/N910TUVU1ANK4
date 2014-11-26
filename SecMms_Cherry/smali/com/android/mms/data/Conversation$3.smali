.class Lcom/android/mms/data/Conversation$3;
.super Landroid/os/AsyncTask;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/data/Conversation$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 47
    .param p1    # [Ljava/lang/Void;

    const-string v2, "Mms/Conversation"

    const-string v3, "markAsRead() thread"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v4, "(read=0)"

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    const/16 v38, 0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "Mms/Conversation"

    const-string v3, "reflect:getUidWillBeMarkRead begin"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v38, :cond_0

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/reflector/AmbsReflector;->MSG_MARK_READ()I

    move-result v34

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    const-string v5, "(read=0)"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/mms/reflector/AmbsReflector;->getUidWillBeMarkRead(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;I)V

    :cond_0
    if-eqz v38, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x6

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "transport_type"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string v3, "session_id"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string v3, "transaction_id"

    aput-object v3, v10, v2

    const/4 v2, 0x3

    const-string v3, "address"

    aput-object v3, v10, v2

    const/4 v2, 0x4

    const-string v3, "date_sent"

    aput-object v3, v10, v2

    const/4 v2, 0x5

    const-string v3, "status"

    aput-object v3, v10, v2

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_INTEGRATED_CONVERSATIONS_IM_N_FT_ONLY:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const-string v11, "(read=0) AND type=1"

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v13, 0x0

    move-object/from16 v8, v18

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mSessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$300(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v41

    if-eqz v28, :cond_8

    :try_start_0
    const-string v2, "Mms/Conversation"

    const-string v3, "MarkAsRead, checking free messages."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v11, 0x0

    const-string v2, "transaction_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v2, "transport_type"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    const-string v2, "address"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "date_sent"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v2, "status"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v17, 0x1

    :goto_1
    const-string v2, "session_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    if-eqz v45, :cond_d

    const-string v2, "im"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ft"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_d

    :cond_1
    const/16 v43, 0x0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v43

    :cond_2
    :goto_2
    const-string v2, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MarkAsRead, senderAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tempNum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v32, 0x0

    :goto_3
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v2, 0x2b

    move/from16 v0, v27

    if-ne v0, v2, :cond_7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    :goto_4
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_4
    const/16 v38, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v43, v12

    goto :goto_2

    :cond_7
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v30

    :try_start_1
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v28, :cond_8

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_5
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    move-object/from16 v0, v37

    invoke-static {v2, v3, v4, v0}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v46

    move-object/from16 v1, v37

    invoke-static {v2, v0, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    # invokes: Lcom/android/mms/data/Conversation;->getReadContentValues()Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/data/Conversation;->access$500()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "(read=0)"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    const-string v2, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update read for thread uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/Conversation$3;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",affected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x0

    # invokes: Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->access$600(Lcom/android/mms/data/Conversation;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/android/mms/reflector/AmbsReflector;->onMarkReadMessage(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->CMAS_Y:Z

    :cond_a
    const-string v2, "Mms/Conversation"

    const-string v3, "markAsRead() thread"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_b
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_c
    new-instance v11, Lcom/sec/orca/freemessage/ReadMessageItem;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-direct/range {v11 .. v17}, Lcom/sec/orca/freemessage/ReadMessageItem;-><init>(Ljava/lang/String;JJI)V

    const-string v2, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MarkAsRead, ReadMessageItem, senderAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sentTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chatType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    move-object/from16 v0, v41

    # invokes: Lcom/android/mms/data/Conversation;->sendFreeMessageStatusAsRead(Lcom/sec/orca/freemessage/ReadMessageItem;Ljava/lang/String;)V
    invoke-static {v2, v11, v0}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;Lcom/sec/orca/freemessage/ReadMessageItem;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    if-eqz v28, :cond_8

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    if-eqz v28, :cond_f

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v2

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v42

    const/16 v29, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "pref_key_send_display_status"

    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    :goto_7
    if-eqz v29, :cond_8

    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "transport_type"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string v3, "rcsdb_id"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string v3, "status"

    aput-object v3, v10, v2

    sget-object v2, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_INTEGRATED_CONVERSATIONS_IM_N_FT_ONLY:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/data/Conversation;->access$200(Lcom/android/mms/data/Conversation;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const-string v21, "(read=0)"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    const/16 v23, 0x0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    if-eqz v28, :cond_8

    :try_start_3
    const-string v2, "Mms/Conversation"

    const-string v3, "MarkAsRead rcs check"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_14

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_11
    const-string v2, "rcsdb_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    const-string v2, "status"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    const-string v2, "transport_type"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    const-string v2, "status"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    if-eqz v45, :cond_13

    const-string v2, "im"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "ft"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_13

    :cond_12
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    # getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/data/Conversation;->access$000(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/Conversation$3;->this$0:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/android/mms/rcs/transaction/ActionsFactory;->readMessage(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v2, "Mms/Conversation"

    const-string v3, "RCS read_message intent done"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_14
    if-eqz v28, :cond_8

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :cond_15
    const-string v2, "pref_key_rcs_display_status"

    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    goto/16 :goto_7

    :catch_1
    move-exception v30

    :try_start_4
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v28, :cond_8

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    if-eqz v28, :cond_16

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v2

    :cond_17
    const-string v2, "Mms/Conversation"

    const-string v3, "nothing to update read"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method
