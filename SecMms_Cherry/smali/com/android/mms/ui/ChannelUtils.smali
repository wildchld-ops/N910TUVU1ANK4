.class public Lcom/android/mms/ui/ChannelUtils;
.super Ljava/lang/Object;
.source "ChannelUtils.java"


# static fields
.field private static final CB_CHANNEL_ENABLED_ALL:I = 0x2

.field private static final CB_CHANNEL_ENABLED_NOTHING:I = 0x0

.field private static final CB_CHANNEL_ENABLED_SOME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ChannelUtils"

.field private static bRunAfterFirst:Z

.field private static bRunAfterFirst2:Z

.field private static final mInsertedSimNum:I

.field private static oldChStatus:I

.field private static oldChStatus2:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    sput-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    sput v0, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    sput-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst2:Z

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ChannelUtils;->mInsertedSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannel(Landroid/content/Context;III)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "channel_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "channel_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHANNEL_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sim_slot"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0, p1, p3}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "channel_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "channel_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_checked"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sim_slot"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4

    invoke-static {p0, p1, p4}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_checked"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sim_slot"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static appendId(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Landroid/content/Context;I)[S
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "channel_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_checked=1 and sim_slot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [S

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, v6, v7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v6
.end method

.method public static getChannels(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_0
    return-object v6

    :cond_0
    move-object v6, v2

    goto :goto_0
.end method

.method public static getCheckedCount(Landroid/content/Context;I)I
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const/4 v3, 0x1

    const-string v5, "is_checked"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_checked=1 and sim_slot="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getIdbyChannel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Long;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sim_slot"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method public static isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sim_slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v6, 0x0

    if-nez v7, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v6, :cond_3

    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isChannelEnabled(Ljava/lang/String;[S)Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChannelEnabled - channel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChannelEnabled()- Invalid channel number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    aget-short v4, p1, v2

    if-ne v4, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sim_slot"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_checked"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sim_slot"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public static removeChannel(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "Mms/ChannelUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChannel - simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sim_slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static removeChannel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "Mms/ChannelUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChannel - channelid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sim_slot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static resetAllCbChannelRange(ZI)V
    .locals 7

    const/4 v6, 0x2

    const/16 v5, 0x3e7

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDocomoAccountAsDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetAllCbChannelRange - simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v1, p1, :cond_7

    if-nez p0, :cond_3

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_2

    sput v4, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    if-eq v1, v6, :cond_5

    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v6, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    goto :goto_0

    :cond_4
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst2:Z

    if-eqz v1, :cond_0

    if-nez p0, :cond_6

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    if-nez v1, :cond_6

    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sput-boolean v4, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst2:Z

    goto :goto_0

    :cond_7
    if-nez p0, :cond_9

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-eqz v1, :cond_9

    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_8

    sput v4, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-eqz p0, :cond_b

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-eq v1, v6, :cond_b

    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels SUCCESS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v6, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto/16 :goto_0

    :cond_a
    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Enable all channels Failed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    sget-boolean v1, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    if-eqz v1, :cond_0

    if-nez p0, :cond_c

    sget v1, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    if-nez v1, :cond_c

    invoke-virtual {v0, v4, v5}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    const-string v1, "Mms/ChannelUtils"

    const-string v2, "resetAllCbChannelRange : Disable all channels"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    sput-boolean v4, Lcom/android/mms/ui/ChannelUtils;->bRunAfterFirst:Z

    goto/16 :goto_0
.end method

.method public static resetCMASSettings()V
    .locals 5

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v2, "Mms/ChannelUtils"

    const-string v3, "resetCMASSettings : End."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/ChannelUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setDisableCMASSettings channelUtils "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    return-void
.end method

.method public static setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 25

    invoke-static/range {p2 .. p2}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v21

    const-string v22, "pref_key_cb_settings_activation"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v22, "pref_key_cb_channel_selection"

    const-string v23, "All channels"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const-string v22, "Mms/ChannelUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setCbSettings - simSlot = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v22, Lcom/android/mms/ui/ChannelUtils;->mInsertedSimNum:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pref_key_cb_settings_activation_sim"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, p2, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pref_key_cb_channel_selection"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, p2, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v22, "All channels"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    const-string v22, "Mms/ChannelUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setCbSettings : bCbActivation :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", chSelection = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "My channel"

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    :cond_2
    if-eqz v5, :cond_12

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v10

    const/16 v16, 0x0

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(ZI)V

    const/4 v15, 0x0

    :goto_0
    array-length v0, v10

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    const-string v22, "Mms/ChannelUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "enable channel : ID = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-short v24, v10, v15

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-short v22, v10, v15

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    aget-short v22, v10, v15

    const/16 v23, 0x397

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_4
    if-nez v16, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x397

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    array-length v0, v10

    move/from16 v22, v0

    if-nez v22, :cond_f

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v22

    if-nez v22, :cond_7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    :cond_7
    const/16 v22, 0x1112

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    :cond_8
    new-instance v8, Landroid/content/Intent;

    const-string v22, "com.android.mms.CB_SETTINGS_CHANGED"

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "cbActivation"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v22, "bMyChannels"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    const/16 v18, 0x0

    const/4 v10, 0x0

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v10

    array-length v0, v10

    move/from16 v18, v0

    :cond_9
    if-eqz v5, :cond_a

    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    invoke-static {v12, v10}, Lcom/android/mms/ui/ChannelUtils;->isChannelEnabled(Ljava/lang/String;[S)Z

    move-result v22

    if-nez v22, :cond_b

    :cond_a
    new-instance v17, Landroid/content/Intent;

    const-string v22, "com.sec.android.app.mms.CB_CLEAR"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "simSlot"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v22

    if-eqz v22, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v22

    if-nez v22, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseAnotherCMASApp()Z

    move-result v22

    if-nez v22, :cond_1e

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/mms/ui/CMASPreferenceActivity;->CheckCMASChannelInfo(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CMAS SET Partial"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CMAS SET President"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1112

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_14

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CMAS SET Extream"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1113

    const/16 v23, 0x1114

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    :goto_2
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_15

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CMAS SET Severity"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1115

    const/16 v23, 0x111a

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    :goto_3
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_16

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CMAS SET Amber"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x111b

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v22

    if-eqz v22, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    const-string v22, "#cmas#type##test#enabled"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_17

    const/16 v22, 0x111c

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CDMA CMAS over LTE : Enable Test"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v22, "pref_cdma_cmas_over_lte_menu"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    const-string v22, "pref_cmas_exercise"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/4 v13, 0x1

    :cond_c
    const-string v22, "pref_cmas_operator_defined"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/4 v14, 0x1

    :cond_d
    if-eqz v13, :cond_18

    const/16 v22, 0x111d

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CDMA CMAS over LTE : Enable Exercise"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-eqz v14, :cond_19

    const/16 v22, 0x111e

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CDMA CMAS over LTE : enable Operator defined"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_7
    const-string v22, "Mms/ChannelUtils"

    const-string v23, "setCbSettings : End."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    const/16 v22, 0x1

    sput v22, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    goto/16 :goto_1

    :cond_10
    const/16 v22, 0x1

    sput v22, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto/16 :goto_1

    :cond_11
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(ZI)V

    goto/16 :goto_1

    :cond_12
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->resetAllCbChannelRange(ZI)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCmasTFGChileSIM()Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x397

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_13

    const/16 v22, 0x1

    sput v22, Lcom/android/mms/ui/ChannelUtils;->oldChStatus2:I

    goto/16 :goto_1

    :cond_13
    const/16 v22, 0x1

    sput v22, Lcom/android/mms/ui/ChannelUtils;->oldChStatus:I

    goto/16 :goto_1

    :cond_14
    const/16 v22, 0x1113

    const/16 v23, 0x1114

    :try_start_1
    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    const-string v22, "Mms/ChannelUtils"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in setCbSettings channelUtils "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :cond_15
    const/16 v22, 0x1115

    const/16 v23, 0x111a

    :try_start_2
    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto/16 :goto_3

    :cond_16
    const/16 v22, 0x111b

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    goto/16 :goto_4

    :cond_17
    const/16 v22, 0x111c

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CDMA CMAS over LTE : Disable Test"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    const/16 v22, 0x111d

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CDMA CMAS over LTE : Disable Exercise"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    const/16 v22, 0x111e

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CDMA CMAS over LTE : Disable Operator defined"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const-string v22, "#cmas#type##test#enabled"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/mms/transaction/CmasReceiverService;->getCmasSetting(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const/16 v22, 0x111c

    const/16 v23, 0x111d

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "VZW CDMA CMAS over LTE : Enable Test"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1b
    const/16 v22, 0x111c

    const/16 v23, 0x111d

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "VZW CDMA CMAS over LTE : Disable Test"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1c
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_1d

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "CMAS SET RMT"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x111c

    const/16 v23, 0x111f

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    goto/16 :goto_7

    :cond_1d
    const/16 v22, 0x111c

    const/16 v23, 0x111f

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v22

    if-eqz v22, :cond_28

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v22

    if-eqz v22, :cond_28

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v22, "ril.sms.gcf-mode"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKorOperator()Z

    move-result v22

    if-nez v22, :cond_1f

    if-eqz v3, :cond_27

    const-string v22, "On"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    :cond_1f
    const/16 v22, 0x1112

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "setCbSettings :: Enable all test rangee for domestic KT Model"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v22, 0xa000

    const v23, 0xafff

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    :cond_20
    invoke-static {v4}, Lcom/android/mms/transaction/CmasReceiverService;->isCLASS1AlertActive(Landroid/content/SharedPreferences;)Z

    move-result v22

    if-eqz v22, :cond_23

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "setCbSettings :: Class1 Enable for domestic"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1113

    const/16 v23, 0x111b

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v22

    if-eqz v22, :cond_24

    const-string v22, "Mms/ChannelUtils"

    const-string v23, "setCbSettings :: TEST Range Enable for domestic"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_21

    const/16 v22, 0x111c

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    :cond_22
    const v22, 0xa000

    const v23, 0xafff

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(II)Z

    goto/16 :goto_7

    :cond_23
    const-string v22, "Mms/ChannelUtils"

    const-string v23, "setCbSettings :: Class1 disable for domestic"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1113

    const/16 v23, 0x111b

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto :goto_8

    :cond_24
    const-string v22, "Mms/ChannelUtils"

    const-string v23, "setCbSettings ::  TEST Range Disable for domestic"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    const/16 v22, 0x111c

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_26

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    :cond_26
    const v22, 0xa000

    const v23, 0xafff

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto/16 :goto_7

    :cond_27
    const-string v22, "Mms/ChannelUtils"

    const-string v23, "setCbSettings : disable all ranges due to not KOR Operator"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1112

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    const/16 v22, 0x1113

    const/16 v23, 0x111b

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    const/16 v22, 0x111c

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    const v22, 0xa000

    const v23, 0xafff

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    goto/16 :goto_7

    :cond_28
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v22

    const/16 v23, 0xd

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const/16 v22, 0x1112

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    const/16 v22, 0x111c

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    const/16 v22, 0x111f

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    const/16 v22, 0x1129

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/SmsManager;->enableCellBroadcast(I)Z

    goto/16 :goto_7
.end method

.method public static setDisableCMASSettings()V
    .locals 5

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1112

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    const/16 v2, 0x1113

    const/16 v3, 0x1114

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    const/16 v2, 0x1115

    const/16 v3, 0x111a

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    const/16 v2, 0x111b

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    const/16 v2, 0x111c

    const/16 v3, 0x111f

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/16 v2, 0x111c

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->disableCellBroadcast(I)Z

    :cond_0
    const v2, 0xa000

    const v3, 0xafff

    invoke-virtual {v1, v2, v3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v2, "Mms/ChannelUtils"

    const-string v3, "setDisableCMASSettings : End."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/ChannelUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setDisableCMASSettings channelUtils "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateSubscription(Landroid/content/Context;III)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/DummyFramework$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sim_slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
