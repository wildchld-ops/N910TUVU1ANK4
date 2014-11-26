.class public Lcom/android/mms/transaction/MessageReservationSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReservationSendReceiver.java"


# static fields
.field private static final ACTION_SEND_DELAYED_MESSAGE:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_DELAYED_MESSAGE"

.field private static final ACTION_SEND_RESERVATION:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_RESERVATION"

.field private static final DELAYED_WHERE:Ljava/lang/String; = "reserved = 2"

.field private static final NO_RESERVED:I = 0x0

.field private static final RESERVED_WHERE:Ljava/lang/String; = "reserved = 1 or reserved = 2"

.field private static final SCHEDULED_WHERE:Ljava/lang/String; = "reserved = 1"

.field private static final TAG:Ljava/lang/String; = "Mms/MessageReservationSendReceiver"

.field private static mContext:Landroid/content/Context;

.field private static mFloatingMsgid:Ljava/lang/String;

.field private static mReservationManager:Lcom/android/mms/transaction/ReservationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mFloatingMsgid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getWhere(I)Ljava/lang/String;
    .locals 2
    .param p0    # I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "reserved = 1"

    goto :goto_0
.end method

.method private sendChatMessage(Ljava/lang/String;JII)J
    .locals 33
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I
    .param p5    # I

    const-string v3, "Mms/MessageReservationSendReceiver"

    const-string v7, "sendChatMessage()"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v21, -0x1

    sget-object v12, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v12, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/16 v3, 0x8

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "thread_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "transaction_id"

    aput-object v7, v5, v3

    const/4 v3, 0x2

    const-string v7, "address"

    aput-object v7, v5, v3

    const/4 v3, 0x3

    const-string v7, "body"

    aput-object v7, v5, v3

    const/4 v3, 0x4

    const-string v7, "session_id"

    aput-object v7, v5, v3

    const/4 v3, 0x5

    const-string v7, "reserved"

    aput-object v7, v5, v3

    const/4 v3, 0x6

    const-string v7, "date"

    aput-object v7, v5, v3

    const/4 v3, 0x7

    const-string v7, "message_type"

    aput-object v7, v5, v3

    invoke-static/range {p4 .. p4}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->getWhere(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "date ASC"

    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-string v26, ""

    const-string v11, ""

    const/16 v16, 0x0

    const/4 v9, 0x0

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    :try_start_0
    const-string v3, "thread_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    const-string v3, "transaction_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const-string v3, "address"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "body"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "session_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v3, "date"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-string v3, "message_type"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v3, ";"

    invoke-static {v9, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_6

    move-object/from16 v10, v16

    array-length v0, v10

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v15, v10, v18

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->convertToFreeMessageFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_0
    if-nez v26, :cond_1

    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/ui/MessageUtils;->getSessionIdByThreadId(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v26

    :cond_1
    const/16 v19, 0x0

    if-eqz v26, :cond_2

    const-string v3, "fakeSessionID"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    const-string v26, "scheduled_fakeSessionID"

    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_INIT"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/freemessage/FreeMessageReceiverService;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "extra_phone_number"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_receivers_list"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "extra_chat_msg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_session_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_msg_id"

    move-object/from16 v0, v19

    move-wide/from16 v1, v30

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "extra_thread_id"

    move-object/from16 v0, v19

    move-wide/from16 v1, v28

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-lez p5, :cond_b

    const/16 v3, 0x6c

    move/from16 v0, v24

    if-eq v0, v3, :cond_3

    const/16 v3, 0x6d

    move/from16 v0, v24

    if-ne v0, v3, :cond_9

    :cond_3
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "extra_msg_type"

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_media_type"

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_shop_content_id_list"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_c

    const-string v3, "extra_chat_type"

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v3, "scheduled_fakeSessionID"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v14, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    if-eqz v23, :cond_5

    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v7, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    sget-object v7, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v28

    invoke-virtual {v3, v7, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    return-wide v21

    :cond_8
    :try_start_1
    new-instance v19, Landroid/content/Intent;

    const-string v3, "com.android.mms.freemessage.ACTION_REQUEST_MESSAGE_SEND"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x67

    move/from16 v0, v24

    if-eq v0, v3, :cond_a

    const/16 v3, 0x68

    move/from16 v0, v24

    if-ne v0, v3, :cond_4

    :cond_a
    const-string v3, "extra_msg_type"

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_media_type"

    const/4 v7, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v17

    const-string v3, "Mms/MessageReservationSendReceiver"

    const-string v7, "The exception is occurred in sendSmsMessage()"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_b
    :try_start_2
    const-string v3, "extra_msg_type"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_c
    const-string v3, "extra_chat_type"

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method

.method private sendImMessage(Ljava/lang/String;JI)J
    .locals 22
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I

    const-string v2, "Mms/MessageReservationSendReceiver"

    const-string v6, "sendChatMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v17, -0x1

    const-wide/16 v9, 0x0

    sget-object v14, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v14, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "body"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "session_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "thread_id"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "address"

    aput-object v6, v4, v2

    invoke-static/range {p4 .. p4}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->getWhere(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "date ASC"

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v12, ""

    const-string v11, ""

    const-wide/16 v20, 0x0

    :try_start_0
    const-string v2, "session_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "body"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "date"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "thread_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/mms/rcs/RcsQuery;->getAddressByRcsThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    sget-object v8, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static/range {v8 .. v13}, Lcom/android/mms/rcs/RcsChatManager;->startChatSendService(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v17

    :cond_2
    :try_start_1
    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    const-string v6, "display_delivery"

    invoke-static {v12, v11, v6}, Lcom/android/mms/rcs/transaction/ActionsFactory;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    const-string v2, "Mms/MessageReservationSendReceiver"

    const-string v6, "The exception is occurred in sendSmsMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private sendMessage(Ljava/lang/String;JII)J
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I
    .param p5    # I

    const-string v5, "Mms/MessageReservationSendReceiver"

    const-string v6, "sendMessage()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ReservationManager"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    const/16 v0, 0x1388

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-wide/16 v1, -0x1

    const-string v5, "sms"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendSmsMessage(Ljava/lang/String;JI)J

    move-result-wide v1

    :cond_0
    :goto_0
    const-string v5, "Mms/MessageReservationSendReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lretDeliveryTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    return-wide v1

    :cond_1
    const-string v5, "mms"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendMmsMessage(Ljava/lang/String;JI)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "im"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendChatMessage(Ljava/lang/String;JII)J

    move-result-wide v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "im"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendImMessage(Ljava/lang/String;JI)J

    move-result-wide v1

    goto :goto_0
.end method

.method private sendMmsMessage(Ljava/lang/String;JI)J
    .locals 28
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I

    const-string v4, "Mms/MessageReservationSendReceiver"

    const-string v8, "sendMmsMessage()"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v18, -0x1

    const-wide/16 v20, -0x1

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const-string v4, "Mms/MessageReservationSendReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sendMmsMessage()- messageUri = "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "thread_id"

    aput-object v8, v6, v4

    const/4 v4, 0x2

    const-string v8, "date"

    aput-object v8, v6, v4

    const/4 v4, 0x3

    const-string v8, "m_type"

    aput-object v8, v6, v4

    const/4 v4, 0x4

    const-string v8, "msg_box"

    aput-object v8, v6, v4

    const/4 v4, 0x5

    const-string v8, "m_size"

    aput-object v8, v6, v4

    const/4 v4, 0x6

    const-string v8, "d_rpt"

    aput-object v8, v6, v4

    const/4 v4, 0x7

    const-string v8, "rr"

    aput-object v8, v6, v4

    const/16 v4, 0x8

    const-string v8, "reserved"

    aput-object v8, v6, v4

    const/16 v4, 0x9

    const-string v8, "sim_slot"

    aput-object v8, v6, v4

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->getWhere(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "date ASC"

    sget-object v4, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v4, "thread_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v4, "m_size"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v4, "date"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string v4, "reserved"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v25, 0x0

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "sim_slot"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v4, "reserved = 2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;I)Z

    move-result v13

    :goto_1
    const-string v4, "Mms/MessageReservationSendReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sendMmsMessage()- isavailable = "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v26, ", simSlot = "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_7

    const-string v4, "Mms/MessageReservationSendReceiver"

    const-string v8, "sendMmsMessage() is rejected...."

    invoke-static {v4, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Mms/MessageReservationSendReceiver"

    const-string v8, "sendMmsMessage()- isavailable = false "

    invoke-static {v4, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v25

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->failSendMessageMMS(Landroid/net/Uri;JI)Z

    :goto_2
    const-wide/16 v26, 0x3e8

    mul-long v18, v18, v26

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v18

    :cond_2
    const/16 v4, 0x9

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "thread_id"

    aput-object v8, v6, v4

    const/4 v4, 0x2

    const-string v8, "date"

    aput-object v8, v6, v4

    const/4 v4, 0x3

    const-string v8, "m_type"

    aput-object v8, v6, v4

    const/4 v4, 0x4

    const-string v8, "msg_box"

    aput-object v8, v6, v4

    const/4 v4, 0x5

    const-string v8, "m_size"

    aput-object v8, v6, v4

    const/4 v4, 0x6

    const-string v8, "d_rpt"

    aput-object v8, v6, v4

    const/4 v4, 0x7

    const-string v8, "rr"

    aput-object v8, v6, v4

    const/16 v4, 0x8

    const-string v8, "reserved"

    aput-object v8, v6, v4

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x1

    const-string v4, "Mms/MessageReservationSendReceiver"

    const-string v8, "sendMmsMessage() DELAYED_WHERE : set isAvailable as true"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v4, "reserved = 2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v13

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x1

    const-string v4, "Mms/MessageReservationSendReceiver"

    const-string v8, "sendMmsMessage() DELAYED_WHERE : set isAvailable as true"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->failSendMessageMMS(Landroid/net/Uri;J)Z

    goto :goto_2

    :cond_7
    new-instance v24, Lcom/android/mms/transaction/MmsMessageSender;

    sget-object v4, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    int-to-long v0, v12

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v24 .. v25}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUseDataSwitchDialog()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v23

    const/4 v4, 0x1

    move/from16 v0, v23

    if-le v0, v4, :cond_9

    const-string v4, "persist.sys.dataprefer.simid"

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v25

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const-string v4, "Mms/MessageReservationSendReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sendMmsMessage mDataSwitchDialog to true : simSlot= "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :try_start_0
    move-object/from16 v0, v24

    invoke-interface {v0, v14, v15}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v4, v8, v5, v0, v1}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    sget-object v8, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8, v14, v15}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    const-string v4, "Mms/MessageReservationSendReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to send message: "

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v26, ", threadId="

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private sendSameTimeMessages(JLjava/lang/String;JI)V
    .locals 22
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # I

    const-string v1, "Mms/MessageReservationSendReceiver"

    const-string v5, "sendSameTimeMessages()"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "complete-conversations"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "limit"

    const-string v7, "all"

    invoke-virtual {v1, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/16 v1, 0xa

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "date"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string v5, "type"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string v5, "status"

    aput-object v5, v3, v1

    const/4 v1, 0x4

    const-string v5, "reserved"

    aput-object v5, v3, v1

    const/4 v1, 0x5

    const-string v5, "m_type"

    aput-object v5, v3, v1

    const/4 v1, 0x6

    const-string v5, "msg_box"

    aput-object v5, v3, v1

    const/4 v1, 0x7

    const-string v5, "reserved"

    aput-object v5, v3, v1

    const/16 v1, 0x8

    const-string v5, "reserved"

    aput-object v5, v3, v1

    const/16 v1, 0x9

    const-string v5, "reserved"

    aput-object v5, v3, v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v4, "reserved = 1 or reserved = 2"

    :goto_0
    const-string v6, "normalized_date ASC"

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_7

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    const-string v8, "sms"

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    const/4 v11, 0x0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    const-string v1, "type"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    const-string v8, "sms"

    :goto_2
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "date"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-string v1, "reserved"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    cmp-long v1, v9, p4

    if-nez v1, :cond_4

    :cond_0
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v14

    :try_start_1
    const-string v1, "Mms/MessageReservationSendReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSameTimemessages()"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_4
    return-void

    :cond_2
    const-string v4, "reserved = 1"

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string v8, "mms"

    goto :goto_2

    :cond_4
    const-wide/16 v15, 0x0

    const-string v1, "mms"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v20, 0x3e8

    mul-long v15, v17, v20

    :goto_5
    cmp-long v1, v15, p1

    if-gtz v1, :cond_0

    const-string v1, "Mms/MessageReservationSendReceiver"

    const-string v5, "sendSameTimeMessages /sendMessage"

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, p0

    move/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendMessage(Ljava/lang/String;JII)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :cond_6
    move-wide/from16 v15, v17

    goto :goto_5

    :cond_7
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method private sendSmsMessage(Ljava/lang/String;JI)J
    .locals 28
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I

    const-string v2, "Mms/MessageReservationSendReceiver"

    const-string v6, "sendSmsMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v23, -0x1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "thread_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "address"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "locked"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "body"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "status"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/16 v2, 0x9

    const-string v6, "svc_cmd"

    aput-object v6, v4, v2

    const/16 v2, 0xa

    const-string v6, "pri"

    aput-object v6, v4, v2

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->getWhere(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "date ASC"

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const-wide/16 v16, 0x0

    const-string v27, ""

    const-string v15, ""

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/16 v25, 0x0

    :try_start_0
    const-string v2, "thread_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v2, "address"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v2, "body"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, ";"

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const-string v2, "date"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-string v2, "locked"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6

    const/16 v19, 0x1

    :goto_1
    const-string v2, "pri"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sim_slot"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "svc_cmd"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    :cond_1
    :goto_2
    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Mms/MessageReservationSendReceiver"

    const-string v6, "sendSmsMessage() is rejected...."

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "type"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "reserved"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v8, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v3

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    :goto_3
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v23

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xb

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "thread_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "address"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "locked"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "body"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "status"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/16 v2, 0x9

    const-string v6, "pri"

    aput-object v6, v4, v2

    const/16 v2, 0xa

    const-string v6, "sim_slot"

    aput-object v6, v4, v2

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xa

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "thread_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "address"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "locked"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "body"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "status"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/16 v2, 0x9

    const-string v6, "pri"

    aput-object v6, v4, v2

    goto/16 :goto_0

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v22

    const-string v2, "Mms/MessageReservationSendReceiver"

    const-string v6, "The exception is occurred in sendSmsMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    new-instance v12, Lcom/android/mms/transaction/SmsMessageSender;

    sget-object v13, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-direct/range {v12 .. v18}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v0, v25

    invoke-interface {v12, v0}, Lcom/android/mms/transaction/MessageSender;->setSimSlot(I)V

    :cond_8
    move-object v2, v12

    check-cast v2, Lcom/android/mms/transaction/SmsMessageSender;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    move-object v2, v12

    check-cast v2, Lcom/android/mms/transaction/SmsMessageSender;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/SmsMessageSender;->setPriorityLevel(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v12

    check-cast v2, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v6, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0, v6}, Lcom/android/mms/transaction/SmsMessageSender;->setServiceCommand(ILjava/lang/String;)V

    :cond_9
    :try_start_1
    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mFloatingMsgid:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Mms/MessageReservationSendReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send message, setmsgid in MessageReservationSendReceiver+++"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mFloatingMsgid:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    check-cast v0, Lcom/android/mms/transaction/SmsMessageSender;

    move-object v2, v0

    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mFloatingMsgid:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/android/mms/transaction/SmsMessageSender;->setFloatingMsgId(Ljava/lang/String;)V

    :cond_a
    move-wide/from16 v0, v16

    invoke-interface {v12, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "Mms/MessageReservationSendReceiver"

    const-string v6, "send SMS message, reset msgidworkingmessage in MessageReservationSendReceiver"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mFloatingMsgid:Ljava/lang/String;

    :cond_b
    if-eqz v3, :cond_c

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v6, v3, v8, v9}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_c
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v21

    const-string v2, "Mms/MessageReservationSendReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send SMS message, threadId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public static setNextAlarm(Landroid/content/Context;JI)V
    .locals 20
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # I

    const-string v0, "Mms/MessageReservationSendReceiver"

    const-string v4, "setNextAlarm()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "all"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "date"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "type"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "status"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "reserved"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "m_type"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "msg_box"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "reserved"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "reserved"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "reserved"

    aput-object v4, v2, v0

    invoke-static/range {p3 .. p3}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->getWhere(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "normalized_date ASC"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_1

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string v7, "sms"

    const-wide/16 v8, 0x0

    const-wide/16 v15, 0x0

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v8, 0x0

    const-wide/16 v15, 0x0

    const-string v0, "type"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    const-string v7, "sms"

    :goto_1
    const-string v0, "_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v0, "date"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-wide/16 v10, 0x0

    const-string v0, "mms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v18, 0x3e8

    mul-long v10, v15, v18

    :goto_2
    cmp-long v0, v10, p1

    if-lez v0, :cond_5

    sget-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    if-nez v0, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    :cond_0
    sget-object v6, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    move/from16 v12, p3

    invoke-virtual/range {v6 .. v12}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJI)V

    const-string v0, "Mms/MessageReservationSendReceiver"

    const-string v4, "setNextAlarm / setAlarm"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_1
    const-string v7, "mms"

    goto :goto_1

    :cond_4
    move-wide v10, v15

    goto :goto_2

    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v14

    :try_start_2
    const-string v0, "Mms/MessageReservationSendReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSameTimemessages()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_6

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method public failSendMessageMMS(Landroid/net/Uri;J)Z
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # J

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->failSendMessageMMS(Landroid/net/Uri;JI)Z

    move-result v0

    return v0
.end method

.method public failSendMessageMMS(Landroid/net/Uri;JI)Z
    .locals 18
    .param p1    # Landroid/net/Uri;
    .param p2    # J
    .param p4    # I

    const-string v1, "Mms/MessageReservationSendReceiver"

    const-string v2, "failSendMessageMMS()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "resp_st"

    const/16 v2, 0x82

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "msg_box"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "reserved"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    move/from16 v0, p4

    invoke-static {v1, v2, v0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    :goto_1
    new-instance v17, Landroid/content/ContentValues;

    const/4 v1, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "err_type"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_try"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    const-string v1, "protocol"

    const-string v2, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "message"

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v13, 0x0

    :try_start_1
    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    sget-object v5, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v8, v17

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    throw v1

    :cond_3
    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "Mms/MessageReservationSendReceiver"

    const-string v3, "onReceive()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "Mms/MessageReservationSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive()- action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_3

    const-string v1, "com.android.mms.Intent.ACTION_SEND_RESERVATION"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.mms.Intent.ACTION_SEND_DELAYED_MESSAGE"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    sput-object p1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    :cond_1
    const-string v1, "MsgSubType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "MsgId"

    const-wide/16 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "FloatingMsgId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mFloatingMsgid:Ljava/lang/String;

    :cond_2
    const-string v1, "MsgReservedType"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "MsgMediaType"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "Mms/MessageReservationSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReservedType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_4

    const-string v1, "Mms/MessageReservationSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReservedType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_0
    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mReservationManager:Lcom/android/mms/transaction/ReservationManager;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;JI)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendMessage(Ljava/lang/String;JII)J

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v7, p0

    move-object v10, v2

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->sendSameTimeMessages(JLjava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v9, v5}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->setNextAlarm(Landroid/content/Context;JI)V

    goto :goto_0

    :catch_0
    move-exception v15

    :try_start_1
    const-string v1, "Mms/MessageReservationSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v8, v9, v5}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->setNextAlarm(Landroid/content/Context;JI)V

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v3, Lcom/android/mms/transaction/MessageReservationSendReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v9, v5}, Lcom/android/mms/transaction/MessageReservationSendReceiver;->setNextAlarm(Landroid/content/Context;JI)V

    throw v1
.end method
