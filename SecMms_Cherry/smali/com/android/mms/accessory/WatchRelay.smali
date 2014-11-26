.class public Lcom/android/mms/accessory/WatchRelay;
.super Landroid/content/BroadcastReceiver;
.source "WatchRelay.java"


# static fields
.field public static final CHECK_READ_REPORT:Ljava/lang/String; = "CHECK_READ_REPORT"

.field private static final MAX_ALERT_TYPE_SIZE:I = 0x5

.field public static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static MMS_SMS_PROJECTION:[Ljava/lang/String; = null

.field public static final NOTIFICATION_BR_PERMISSIONS:Ljava/lang/String; = "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

.field public static final NOTIFICATION_CLEAR_ALL:Ljava/lang/String; = "com.android.sms.action.CLEAR_ALL"

.field public static final NOTIFICATION_CLEAR_MESSAGE:Ljava/lang/String; = "com.android.sms.action.SWEEP_NOTIFICATION"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final NOTIFICATION_MSG_PHONENUM:Ljava/lang/String; = "NOTIFICATION_MSG_PHONENUM"

.field public static final NOTIFICATION_PACKAGE_NAME:Ljava/lang/String; = "NOTIFICATION_PACKAGE_NAME"

.field public static final NOTIFICATION_PROVIDER_ALERT_NOTIFICATION_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

.field public static final NOTIFICATION_PROVIDER_CHECK_NOTI_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

.field public static final NOTIFICATION_PROVIDER_ITEM_ID:Ljava/lang/String; = "NOTIFICATION_ITEM_ID"

.field public static final NOTIFICATION_PROVIDER_ITEM_URI:Ljava/lang/String; = "NOTIFICATION_ITEM_URI"

.field public static final NOTIFICATION_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "NOTIFICATION_PACKAGE_NAME"

.field public static final NOTIFICATION_TEXT_MESSAGE:Ljava/lang/String; = "NOTIFICATION_TEXT_MESSAGE"

.field public static final NOTIFICATION_TYPE_DISTINGUISH:Ljava/lang/String; = "NOTIFICATION_TYPE_DISTINGUISH"

.field public static final READ_MSG_TYPE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mms/WatchRelay"

.field public static final UPDATE_READ_STATUS_FROM_NOTI_PROVIDER:Ljava/lang/String; = "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

.field public static final URI:[Ljava/lang/String;

.field public static final URI_DDM:Ljava/lang/String; = "directDisplayMessage"

.field private static sUpdateAllUnreadMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "wap-push-messages"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "directDisplayMessage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/accessory/WatchRelay;->MMS_SMS_PROJECTION:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static converStringIdsToIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p0    # Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    new-array v2, v3, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static extractMsgIdByType(Ljava/util/ArrayList;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)[I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v3, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static extractMsgInfoByType(Ljava/util/SortedSet;Ljava/util/SortedSet;[Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCb()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isSms()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isWap()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;
    .locals 21
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # [I

    const-string v3, "com.samsung.accessory.sanotiprovider"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v19, 0x0

    :cond_0
    :goto_0
    return-object v19

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v10

    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/accessory/WatchRelay;->MMS_SMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "read=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_2

    const/16 v19, 0x0

    const/4 v3, 0x0

    aput v14, p3, v3

    const/4 v3, 0x1

    aput v17, p3, v3

    const/4 v3, 0x2

    aput v20, p3, v3

    const/4 v3, 0x3

    aput v9, p3, v3

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "Mms/WatchRelay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUnreadMsgIdFromThread msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Landroid/net/Uri;

    move-object/from16 v19, v0

    const/4 v13, 0x0

    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/mms/util/DummyFramework$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13

    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "sms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_5
    const-string v3, "mms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "wpm"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "wap-push-messages"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v19, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    aput v14, p3, v3

    const/4 v3, 0x1

    aput v17, p3, v3

    const/4 v3, 0x2

    aput v20, p3, v3

    const/4 v3, 0x3

    aput v9, p3, v3

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    const/4 v5, 0x0

    aput v14, p3, v5

    const/4 v5, 0x1

    aput v17, p3, v5

    const/4 v5, 0x2

    aput v20, p3, v5

    const/4 v5, 0x3

    aput v9, p3, v5

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method private static makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p0    # [I
    .param p1    # Ljava/lang/String;
    .param p2    # I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ITEM_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p2}, Lcom/android/mms/accessory/WatchRelay;->setNotificationId(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p0    # I
    .param p1    # [I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ITEM_URI"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    packed-switch p0, :pswitch_data_0

    :goto_0
    const-string v1, "NOTIFICATION_TYPE_DISTINGUISH"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/mms/accessory/WatchRelay;->setNotificationId(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v1, "NOTIFICATION_MSG_PHONENUM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static makeReceivedMsgIntentForDDM([ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0    # [I
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ITEM_URI"

    sget-object v2, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_TEXT_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_MSG_PHONENUM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private static makeUri(I)Ljava/lang/String;
    .locals 2
    .param p0    # I

    sget-object v0, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_0

    const-string v0, "Mms/WatchRelay"

    const-string v1, "makeUri msgType is not matched"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static markAsRead(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/Intent;

    if-nez p1, :cond_1

    const-string v7, "Mms/WatchRelay"

    const-string v8, "markAsRead() intetn is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "NOTIFICATION_ITEM_ID"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    check-cast v2, [I

    const-string v7, "NOTIFICATION_ITEM_URI"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    const-string v7, "com.android.mms"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const-string v7, "Mms/WatchRelay"

    const-string v8, "UPDATE_READ_STATUS_FROM_NOTI_PROVIDER extra is packageName msgIdArray readMsgUri"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const/16 v7, 0x378

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_1
    const/4 v7, 0x4

    if-ge v0, v7, :cond_5

    sget-object v7, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v0

    const-string v7, "Mms/WatchRelay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msgType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x0

    :goto_2
    array-length v7, v2

    if-ge v1, v7, :cond_0

    packed-switch v3, :pswitch_data_0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    aget v7, v2, v1

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Lcom/android/mms/ui/MessageUtils;->markSmsAsRead(Landroid/content/Context;J)V

    goto :goto_3

    :pswitch_1
    aget v7, v2, v1

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Lcom/android/mms/ui/MessageUtils;->markWpmAsRead(Landroid/content/Context;J)V

    goto :goto_3

    :pswitch_2
    aget v7, v2, v1

    int-to-long v7, v7

    const-string v9, "CHECK_READ_REPORT"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {p0, v7, v8, v9}, Lcom/android/mms/ui/MessageUtils;->markMmsAsRead(Landroid/content/Context;JZ)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sendClearAllMsgIntent(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x41c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x378

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;II)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # I

    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReadMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    const/4 v3, 0x0

    aput p2, v1, v3

    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Landroid/net/Uri;

    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReadMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadMsgIntent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/mms/accessory/WatchRelay;->converStringIdsToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;I[I)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # [I

    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReadMsgIntent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/android/mms/accessory/WatchRelay;->makeReadMsgIntent([ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReadMsgIntent(Landroid/content/Context;J)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # J

    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    goto :goto_0
.end method

.method public static sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V
    .locals 12
    .param p0    # Landroid/content/Context;
    .param p1    # [Landroid/net/Uri;
    .param p2    # [I

    const/4 v11, 0x0

    const/4 v10, 0x4

    const-string v7, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v7}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    array-length v7, p1

    if-gtz v7, :cond_3

    :cond_2
    const-string v7, "Mms/WatchRelay"

    const-string v8, "sendReadNotificationProvider() uri is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    new-array v2, v10, [I

    new-array v4, v10, [[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_4

    aget v7, p2, v6

    new-array v7, v7, [I

    aput-object v7, v4, v6

    aput v11, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    array-length v7, p1

    if-ge v0, v7, :cond_7

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, p1, v0

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_5

    sget-object v7, Lcom/android/mms/accessory/WatchRelay;->URI:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-object v7, v4, v1

    aget v8, v2, v1

    aput v3, v7, v8

    aget v7, v2, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v2, v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_0

    aget v7, v2, v1

    if-lez v7, :cond_8

    aget-object v7, v4, v1

    invoke-static {p0, v1, v7}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;I[I)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # J
    .param p4    # Ljava/lang/String;

    const v7, 0x7f0c013b

    const/4 v6, 0x1

    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReceivedMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [I

    const/4 v3, 0x0

    long-to-int v4, p2

    aput v4, v1, v3

    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CBmessages"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0c0100

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_1
    :goto_1
    invoke-static {p1, v1, p4, v2, v6}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const-string v3, "NOTIFICATION_MSG_PHONENUM"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "Pushmessage"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0c0163

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_4
    const-string v3, "Unknown address"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_5
    invoke-static {p4}, Lcom/android/mms/ui/MessageUtils;->isCmasSender(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0c01c7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_6
    invoke-static {p4}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p4, "Verizon Global Support"

    goto :goto_1
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    const/4 v6, 0x1

    const-string v3, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "Mms/WatchRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReceivedMsgIntent() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [I

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, p3, v2, v6}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;I[ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # [I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReceivedMsgIntent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendReceivedMsgIntent(Landroid/content/Context;Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 11
    .param p0    # Landroid/content/Context;
    .param p3    # Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ")V"
        }
    .end annotation

    const-string v8, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v8}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "Mms/WatchRelay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendReceivedMsgIntent() msg type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Mms/WatchRelay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendReceivedMsgIntent() sUpdateAllUnreadMessages : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v5

    sget-boolean v8, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    if-nez v8, :cond_2

    iget-wide v8, p3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMsgId:J

    invoke-virtual {p3, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v5, v8, v9, v10}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntent(Landroid/content/Context;IJLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    const/4 v8, 0x5

    new-array v0, v8, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x5

    if-ge v1, v8, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1, p2, v0}, Lcom/android/mms/accessory/WatchRelay;->extractMsgInfoByType(Ljava/util/SortedSet;Ljava/util/SortedSet;[Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    :goto_2
    const/4 v8, 0x5

    if-ge v1, v8, :cond_9

    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_4

    const/4 v8, 0x3

    if-ne v1, v8, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v7

    if-ne v5, v1, :cond_7

    const/4 v4, 0x1

    :goto_4
    const/4 v3, 0x0

    const/4 v8, 0x4

    if-eq v1, v8, :cond_6

    const/4 v8, 0x2

    if-ne v1, v8, :cond_8

    :cond_6
    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/accessory/WatchRelay;->extractMsgIdByType(Ljava/util/ArrayList;)[I

    move-result-object v9

    aget-object v8, v0, v1

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {v8, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v9, v8, v7, v4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    :goto_5
    const-string v8, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/accessory/WatchRelay;->extractMsgIdByType(Ljava/util/ArrayList;)[I

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v9, v7, v4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v8, 0x3

    if-ne v5, v8, :cond_a

    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_a

    const/4 v4, 0x1

    :goto_7
    const/4 v3, 0x0

    const/4 v8, 0x3

    invoke-static {v8}, Lcom/android/mms/accessory/WatchRelay;->makeUri(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-static {v9}, Lcom/android/mms/accessory/WatchRelay;->extractMsgIdByType(Ljava/util/ArrayList;)[I

    move-result-object v9

    invoke-virtual {v6, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10, v7, v4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntent(I[ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v8, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    goto :goto_7
.end method

.method public static sendReceivedMsgIntentForDDM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    const-string v2, "com.samsung.accessory.sanotiprovider"

    invoke-static {p0, v2}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/WatchRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReceivedMsgIntentForDDM() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    long-to-int v3, p1

    aput v3, v1, v2

    invoke-static {v1, p3, p4}, Lcom/android/mms/accessory/WatchRelay;->makeReceivedMsgIntentForDDM([ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.samsung.accessory.permission.TRANSPORTING_NOTIFICATION_ITEM"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setNotificationId(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Intent;
    .param p1    # I

    const/16 v1, 0x7b

    packed-switch p1, :pswitch_data_0

    const-string v0, "NOTIFICATION_ID"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-object p0

    :pswitch_0
    const-string v0, "NOTIFICATION_ID"

    const/16 v1, 0x378

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string v0, "NOTIFICATION_ID"

    const/16 v1, 0x41c

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string v0, "NOTIFICATION_ID"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    const-string v0, "NOTIFICATION_ID"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Mms/WatchRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.accessory.intent.action.UPDATE_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/android/mms/accessory/WatchRelay;->markAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.sms.action.CLEAR_ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v4, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    invoke-static {p1}, Lcom/android/mms/ui/MessagesLockscreen;->removeRemoteView(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/mms/cover/CoverMsgList;->RemoveCoverMsgList(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.sms.action.SWEEP_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.mms"

    const-string v2, "NOTIFICATION_PACKAGE_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v4, Lcom/android/mms/accessory/WatchRelay;->sUpdateAllUnreadMessages:Z

    invoke-static {p1}, Lcom/android/mms/ui/MessagesLockscreen;->removeRemoteView(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/mms/cover/CoverMsgList;->RemoveCoverMsgList(Landroid/content/Context;)V

    goto :goto_0
.end method
