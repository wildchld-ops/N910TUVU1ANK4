.class public Lcom/android/mms/transaction/ReservationManager;
.super Ljava/lang/Object;
.source "ReservationManager.java"


# static fields
.field public static final ACTION_FLOATING_MSG_ID:Ljava/lang/String; = "FloatingMsgId"

.field private static final ACTION_SEND_DELAYED_MESSAGE:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_DELAYED_MESSAGE"

.field public static final ACTION_SEND_MEDIA_TYPE:Ljava/lang/String; = "MsgMediaType"

.field public static final ACTION_SEND_MSG_ID:Ljava/lang/String; = "MsgId"

.field public static final ACTION_SEND_MSG_TYPE:Ljava/lang/String; = "MsgSubType"

.field private static final ACTION_SEND_RESERVATION:Ljava/lang/String; = "com.android.mms.Intent.ACTION_SEND_RESERVATION"

.field public static final ACTION_SEND_RESERVED_TYPE:Ljava/lang/String; = "MsgReservedType"

.field private static final DELAYED_MESSAGE:I = 0x2

.field private static final DELAYED_WHERE:Ljava/lang/String; = "reserved = 2"

.field private static final RESERVED_WHERE:Ljava/lang/String; = "reserved = 1 or reserved = 2"

.field private static final SCHEDULED_MESSAGE:I = 0x1

.field private static final SCHEDULED_WHERE:Ljava/lang/String; = "reserved = 1"

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationManager"

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/mms/transaction/ReservationManager;


# instance fields
.field private mFloatingMsgId:Ljava/lang/String;

.field private mReservationBaseDeliveryTime:J

.field private mReservationBaseMessageID:J

.field private mReservationBaseMessageType:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_bAlarmSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    iput-wide v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/ReservationManager;->mFloatingMsgId:Ljava/lang/String;

    const-string v0, "Mms/ReservationManager"

    const-string v1, "ReservationManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v0, "Mms/ReservationManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/transaction/ReservationManager;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/ReservationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->sInstance:Lcom/android/mms/transaction/ReservationManager;

    return-object v0
.end method

.method private getWhere(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

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

.method private makeAlarmIntent(Ljava/lang/String;JI)Landroid/app/PendingIntent;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I

    const-string v2, "Mms/ReservationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlarmIntent() reservedType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.Intent.ACTION_SEND_RESERVATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "MsgSubType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "MsgId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Mms/ReservationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlarmIntent() setFloatingMsgid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/ReservationManager;->mFloatingMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FloatingMsgId"

    iget-object v3, p0, Lcom/android/mms/transaction/ReservationManager;->mFloatingMsgId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v2, "MsgReservedType"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.Intent.ACTION_SEND_DELAYED_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private makeAlarmIntentForChat(Ljava/lang/String;JIII)Landroid/app/PendingIntent;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const-string v2, "Mms/ReservationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlarmIntent() reservedType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p4, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.Intent.ACTION_SEND_RESERVATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const-string v2, "MsgSubType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "MsgId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "MsgReservedType"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-lez p6, :cond_1

    const-string v2, "MsgMediaType"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v2, "Mms/ReservationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeAlarmIntent() msgID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, p5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    const/4 v2, 0x2

    if-ne p4, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.Intent.ACTION_SEND_DELAYED_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerAlarm(Ljava/lang/String;JJI)V
    .locals 25
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # J
    .param p6    # I

    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm() - deliveryTime : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "integrated-complete-conversations"

    invoke-static {v2, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    :goto_0
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    const-string v8, "all"

    invoke-virtual {v2, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/16 v2, 0x9

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "type"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "status"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "m_type"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "msg_box"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "reserved"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "reserved"

    aput-object v6, v4, v2

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/ReservationManager;->getWhere(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "normalized_date ASC"

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    if-eqz v22, :cond_3

    :try_start_0
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v21

    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm() - count = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v21, :cond_3

    const-string v9, "sms"

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v9, p1

    :goto_1
    const-string v2, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    cmp-long v2, v14, v10

    if-eqz v2, :cond_2

    :cond_0
    const-wide/16 v12, 0x0

    const-string v2, "date"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v2, "mms"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v2, v14, v15, v1}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;JI)V

    move-object/from16 v8, p0

    move/from16 v14, p6

    invoke-virtual/range {v8 .. v14}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJI)V

    const-string v2, "Mms/ReservationManager"

    const-string v6, "registerAlarm - m_bAlarmSet"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "szTypeInDB:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " lMsgIdInDB:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v22, :cond_4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "complete-conversations"

    invoke-static {v2, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v2, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_7

    const-string v9, "sms"

    :goto_4
    goto/16 :goto_1

    :cond_7
    const-string v9, "mms"

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v9, v10, v11, v1}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;JI)V

    move-object/from16 v14, p0

    move-object v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v18, p4

    move/from16 v20, p6

    invoke-virtual/range {v14 .. v20}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJI)V

    const-string v2, "Mms/ReservationManager"

    const-string v6, "registerAlarm - else"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v23

    :try_start_2
    const-string v2, "Mms/ReservationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerAlarm()"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v22, :cond_4

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    if-eqz v22, :cond_9

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
.end method

.method private registerAlarmForChat(Ljava/lang/String;JJII)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # J
    .param p6    # I
    .param p7    # I

    const-string v0, "Mms/ReservationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAlarm() - deliveryTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/ReservationManager;->makeAlarmIntentForChat(Ljava/lang/String;JIII)Landroid/app/PendingIntent;

    move-result-object v7

    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4, p5, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public addChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJII)J
    .locals 18
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # J
    .param p8    # I
    .param p9    # I

    const-string v2, "Mms/ReservationManager"

    const-string v3, "addChat()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    :try_start_0
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "address"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "session_id"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "body"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "thread_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "reserved"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "transaction_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p8, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p9

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    move/from16 v0, p8

    if-ne v0, v2, :cond_3

    const-string v2, "message_type"

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    sget-object v10, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v10, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :cond_1
    const/4 v9, 0x0

    if-lez p8, :cond_2

    const/4 v9, 0x1

    :cond_2
    const-string v3, "im"

    move-object/from16 v2, p0

    move-wide/from16 v6, p6

    move/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/transaction/ReservationManager;->registerAlarmForChat(Ljava/lang/String;JJII)V

    move-wide v12, v4

    :goto_1
    return-wide v12

    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p8

    if-ne v0, v2, :cond_0

    :try_start_1
    const-string v2, "message_type"

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v11

    const-string v2, "Mms/ReservationManager"

    const-string v3, "addChat() error"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v12, v4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p9

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, p8

    if-ne v0, v2, :cond_5

    :try_start_2
    const-string v2, "message_type"

    const/16 v3, 0x6d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p8

    if-ne v0, v2, :cond_0

    const-string v2, "message_type"

    const/16 v3, 0x68

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public addChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)J
    .locals 14
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # J
    .param p8    # Ljava/lang/String;
    .param p9    # I

    const-string v1, "Mms/ReservationManager"

    const-string v2, "addChat()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "address"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "session_id"

    invoke-virtual {v13, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "thread_id"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "reserved"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v8, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2, v8, v13}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    :cond_0
    const-string v2, "im"

    move-object v1, p0

    move-wide/from16 v5, p6

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/transaction/ReservationManager;->registerAlarm(Ljava/lang/String;JJI)V

    move-wide v10, v3

    :goto_0
    return-wide v10

    :catch_0
    move-exception v9

    const-string v1, "Mms/ReservationManager"

    const-string v2, "addChat() error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v3

    goto :goto_0
.end method

.method public addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JI)J
    .locals 8
    .param p1    # Lcom/google/android/mms/pdu/PduPersister;
    .param p2    # Lcom/google/android/mms/pdu/SendReq;
    .param p3    # Lcom/android/mms/model/SlideshowModel;
    .param p4    # J
    .param p6    # I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/transaction/ReservationManager;->addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JII)J
    .locals 13
    .param p1    # Lcom/google/android/mms/pdu/PduPersister;
    .param p2    # Lcom/google/android/mms/pdu/SendReq;
    .param p3    # Lcom/android/mms/model/SlideshowModel;
    .param p4    # J
    .param p6    # I
    .param p7    # I

    const-string v1, "Mms/ReservationManager"

    const-string v2, "addMms()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v11

    invoke-virtual {p2, v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    const-wide/16 v1, 0x3e8

    div-long v1, p4, v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    move/from16 v0, p6

    int-to-long v1, v0

    invoke-virtual {p2, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p7

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    :cond_0
    const-string v2, "mms"

    move-object v1, p0

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/transaction/ReservationManager;->registerAlarm(Ljava/lang/String;JJI)V

    move-wide v9, v3

    :goto_1
    return-wide v9

    :cond_1
    :try_start_1
    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "Mms/ReservationManager"

    const-string v2, "addMms() error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v3

    goto :goto_1
.end method

.method public addSms(JLjava/lang/String;Ljava/lang/String;JZZII)J
    .locals 12
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # Z
    .param p8    # Z
    .param p9    # I
    .param p10    # I

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JZZIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public addSms(JLjava/lang/String;Ljava/lang/String;JZZIII)J
    .locals 14
    .param p1    # J
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # J
    .param p7    # Z
    .param p8    # Z
    .param p9    # I
    .param p10    # I
    .param p11    # I

    const-string v1, "Mms/ReservationManager"

    const-string v2, "addSms()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "thread_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "address"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "body"

    move-object/from16 v0, p4

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "reserved"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "pri"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v11, 0x0

    if-eqz p7, :cond_0

    or-int/lit8 v11, v11, 0x1

    :cond_0
    if-eqz p8, :cond_1

    or-int/lit8 v11, v11, 0x2

    :cond_1
    const-string v1, "svc_cmd"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sim_slot"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sim_imsi"

    invoke-static/range {p11 .. p11}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v5, v13}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    :cond_4
    const-string v2, "sms"

    move-object v1, p0

    move-wide/from16 v5, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/transaction/ReservationManager;->registerAlarm(Ljava/lang/String;JJI)V

    move-wide v9, v3

    :goto_1
    return-wide v9

    :cond_5
    :try_start_1
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "Mms/ReservationManager"

    const-string v2, "addSms() error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v3

    goto :goto_1
.end method

.method public cancelAlarm(Ljava/lang/String;JI)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # I

    const-wide/16 v3, -0x1

    const-string v1, "Mms/ReservationManager"

    const-string v2, "cancelAlarm()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/ReservationManager;->makeAlarmIntent(Ljava/lang/String;JI)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-wide v3, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    iput-wide v3, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    return-void
.end method

.method public getReservedSendMessageCount()I
    .locals 11

    const-string v0, "Mms/ReservationManager"

    const-string v4, "getReservedSendMessageCount()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "complete-conversations"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v10, "all"

    invoke-virtual {v0, v4, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/16 v0, 0x8

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

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "reserved = 1 or reserved = 2"

    :goto_0
    const-string v5, "normalized_date ASC"

    sget-object v0, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    const-string v0, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getReservedSendMessageCount(): retMessageCount="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    const-string v3, "reserved = 1"

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerAlarm()"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getServiceState(Landroid/content/Context;)Z
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/mms/transaction/ReservationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/ReservationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isLGUUsim()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->isImsRegistered(Landroid/content/Context;)Z

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Mms/ReservationManager"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 23

    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset()"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "complete-conversations"

    invoke-static {v3, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "limit"

    const-string v9, "all"

    invoke-virtual {v3, v7, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/16 v3, 0x8

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "date"

    aput-object v7, v5, v3

    const/4 v3, 0x2

    const-string v7, "type"

    aput-object v7, v5, v3

    const/4 v3, 0x3

    const-string v7, "status"

    aput-object v7, v5, v3

    const/4 v3, 0x4

    const-string v7, "reserved"

    aput-object v7, v5, v3

    const/4 v3, 0x5

    const-string v7, "m_type"

    aput-object v7, v5, v3

    const/4 v3, 0x6

    const-string v7, "msg_box"

    aput-object v7, v5, v3

    const/4 v3, 0x7

    const-string v7, "reserved"

    aput-object v7, v5, v3

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v6, "reserved = 1 or reserved = 2"

    :goto_0
    const-string v8, "normalized_date ASC"

    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_3

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    const-string v10, "sms"

    const-wide/16 v11, 0x0

    const-wide/16 v18, 0x0

    const/4 v15, 0x1

    const-string v3, "type"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_6

    const-string v10, "sms"

    :goto_1
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v3, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "reserved"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    :cond_0
    const-wide/16 v13, 0x0

    const-string v3, "mms"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v21, 0x3e8

    mul-long v13, v18, v21

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-wide/from16 v21, v0

    cmp-long v3, v21, v11

    if-eqz v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v3, v1, v2, v15}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;JI)V

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJI)V

    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset - m_bAlarmSet"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    const-string v3, "Mms/ReservationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "szTypeInDB:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " lMsgIdInDB:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v6, "reserved = 1"

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v10, "mms"

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v13, v18

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12, v15}, Lcom/android/mms/transaction/ReservationManager;->cancelAlarm(Ljava/lang/String;JI)V

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Lcom/android/mms/transaction/ReservationManager;->setAlarm(Ljava/lang/String;JJI)V

    const-string v3, "Mms/ReservationManager"

    const-string v7, "reset - else"

    invoke-static {v3, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v17

    :try_start_2
    const-string v3, "Mms/ReservationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerAlarm()"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v3

    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3
.end method

.method public resetAfterConnected()V
    .locals 4

    const-string v2, "Mms/ReservationManager"

    const-string v3, "resetAfterConnected()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->getReservedSendMessageCount()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    sget-object v2, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->reset()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/ReservationManager$1;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/ReservationManager$1;-><init>(Lcom/android/mms/transaction/ReservationManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public resetThreadAfterConnected()V
    .locals 6

    const-string v3, "Mms/ReservationManager"

    const-string v4, "resetThreadAfterConnected()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    const/4 v1, 0x0

    const/16 v2, 0x14

    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/ReservationManager;->getServiceState(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    const-string v3, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cntTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bSmsAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_2

    :cond_0
    const/16 v2, 0x14

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    sget-object v3, Lcom/android/mms/transaction/ReservationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "Mms/ReservationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cntTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bNetworkAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReservationManager;->reset()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public setAlarm(Ljava/lang/String;JJI)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # J
    .param p6    # I

    const-string v1, "Mms/ReservationManager"

    const-string v2, "setAlarm()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Mms/ReservationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarm() type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deliveryTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currenttTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reservedType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/mms/transaction/ReservationManager;->makeAlarmIntent(Ljava/lang/String;JI)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/android/mms/transaction/ReservationManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p4, p5, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    iput-wide p2, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageID:J

    iput-wide p4, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseDeliveryTime:J

    iput-object p1, p0, Lcom/android/mms/transaction/ReservationManager;->mReservationBaseMessageType:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/transaction/ReservationManager;->m_bAlarmSet:Z

    return-void
.end method

.method public setFloatingMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/transaction/ReservationManager;->mFloatingMsgId:Ljava/lang/String;

    return-void
.end method
