.class public Lcom/android/mms/glance/GlanceUtils;
.super Ljava/lang/Object;
.source "GlanceUtils.java"


# static fields
.field private static final Incomming_Message:I = 0x0

.field private static final Outgoing_Message:I = 0x1

.field private static final Outgoing_Message_MAX:I = 0xa

.field private static final TAG:Ljava/lang/String; = "mms/GlanceUtil"

.field private static final Total_Message_MAX:I = 0x1e

.field private static mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 11
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # J
    .param p4    # Z

    const-wide/16 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v4, "mms/GlanceUtil"

    const-string v5, "addPrioritySender()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "address"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    cmp-long v4, p2, v9

    if-lez v4, :cond_1

    const-string v4, "pri"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    invoke-virtual {v0, v3, v8}, Lcom/android/mms/glance/GlanceDBHelper;->insert(Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v4, v4, v9

    if-lez v4, :cond_0

    const-string v4, "eventType=2 AND PHONE_NUMBERS_EQUAL(address, ?, 0)"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/mms/glance/GlanceDBHelper;->delete(Ljava/lang/String;[Ljava/lang/String;I)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/glance/GlanceDBHelper;->getMaxPriority()J

    move-result-wide v1

    const-string v4, "pri"

    const-wide/16 v5, 0x1

    add-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static closeGlanceDB()V
    .locals 2

    const-string v0, "mms/GlanceUtil"

    const-string v1, "closeGlanceDB()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    invoke-virtual {v0}, Lcom/android/mms/glance/GlanceDBHelper;->close()V

    return-void
.end method

.method private static createOrUpdate(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIZ)Z
    .locals 7
    .param p0    # I
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # Z

    const-string v4, "mms/GlanceUtil"

    const-string v5, "createOrUpdate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int v4, p0, p1

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    const/16 v4, 0xa

    if-lt p1, v4, :cond_0

    const-string v4, "mms/GlanceUtil"

    const-string v5, "Don`t need to do anything for updating"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v0, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "address"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_3

    const/4 v0, 0x1

    const-string v4, "incoming"

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p4}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "isreuquestasps"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    :goto_2
    if-eqz p7, :cond_5

    sget-object v4, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/mms/glance/GlanceDBHelper;->insert(Landroid/content/ContentValues;I)J

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    if-ne p5, v4, :cond_1

    const/4 v0, 0x1

    const-string v4, "outgoing"

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_4
    add-int v4, p0, p1

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_2

    const/16 v4, 0xa

    if-lt p1, v4, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "address"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "eventType"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "eventDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/android/mms/glance/GlanceDBHelper;->insert(Landroid/content/ContentValues;I)J

    const-string v4, "mms/GlanceUtil"

    const-string v5, "Update Event"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isreuquestasps"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    sget-object v4, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p2, p3, v5}, Lcom/android/mms/glance/GlanceDBHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    const-string v4, "mms/GlanceUtil"

    const-string v5, "Update Log"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v4, "mms/GlanceUtil"

    const-string v5, "Already fulled maxsize"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static deletePrioritySender(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const-string v1, "mms/GlanceUtil"

    const-string v2, "deletePrioritySender()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const-string v1, "PHONE_NUMBERS_EQUAL(address, ?, 0)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/glance/GlanceDBHelper;->delete(Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/mms/glance/GlanceUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/glance/GlanceDBHelper;

    invoke-direct {v0, p0}, Lcom/android/mms/glance/GlanceDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    sget-object v0, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    invoke-virtual {v0}, Lcom/android/mms/glance/GlanceDBHelper;->open()Lcom/android/mms/glance/GlanceDBHelper;

    :cond_0
    sget-object v0, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPrioritySenderCount(Landroid/content/Context;)I
    .locals 9
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "COUNT(_id)"

    aput-object v3, v1, v7

    const/4 v5, 0x2

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string v0, "mms/GlanceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPrioritySenderCount() SQLiteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getPrioritySenderList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v9, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v1, v9

    const-string v4, "pri DESC"

    const/4 v5, 0x2

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isPrioritySender(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    goto :goto_0
.end method

.method public static updateCount(Ljava/lang/String;I)Z
    .locals 23
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/16 v22, 0x0

    const-string v1, "mms/GlanceUtil"

    const-string v7, "update Glance Count"

    invoke-static {v1, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "mms/GlanceUtil"

    const-string v7, "It`s own number. Don`t need to update!"

    invoke-static {v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v7, "address"

    aput-object v7, v2, v1

    const/4 v1, 0x1

    const-string v7, "incoming"

    aput-object v7, v2, v1

    const/4 v1, 0x2

    const-string v7, "outgoing"

    aput-object v7, v2, v1

    const/4 v1, 0x3

    const-string v7, "isreuquestasps"

    aput-object v7, v2, v1

    const/4 v1, 0x4

    const-string v7, "isreuquestasspam"

    aput-object v7, v2, v1

    const-string v3, "PHONE_NUMBERS_EQUAL(address, ?, 0)"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v4, v1

    :try_start_0
    sget-object v1, Lcom/android/mms/glance/GlanceUtils;->mGlanceDBHelper:Lcom/android/mms/glance/GlanceDBHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v22

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v22, :cond_6

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mms/GlanceUtil"

    const-string v7, "Fail to update this contact info"

    invoke-static {v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v1, "isreuquestasps"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v1, "isreuquestasspam"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v1, 0x1

    move/from16 v0, v21

    if-ge v0, v1, :cond_5

    const-string v1, "incoming"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v1, "outgoing"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v12, 0x0

    move-object v7, v3

    move-object v8, v4

    move-object/from16 v9, p0

    move/from16 v10, p1

    invoke-static/range {v5 .. v12}, Lcom/android/mms/glance/GlanceUtils;->createOrUpdate(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    const-string v1, "mms/GlanceUtil"

    const-string v7, "Already, this contact is requested"

    invoke-static {v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x0

    const/16 v19, 0x1

    move v12, v5

    move v13, v6

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, p0

    move/from16 v17, p1

    :try_start_3
    invoke-static/range {v12 .. v19}, Lcom/android/mms/glance/GlanceUtils;->createOrUpdate(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IIZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v20

    :try_start_4
    const-string v1, "mms/GlanceUtil"

    const-string v7, "Exception : "

    move-object/from16 v0, v20

    invoke-static {v1, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    if-eqz v22, :cond_2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eqz v22, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public static updateDeletedField(Landroid/content/Context;II)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x1

    const-string v3, "mms/GlanceUtil"

    const-string v4, "updateDeletedField()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "deleted"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v5}, Lcom/android/mms/glance/GlanceDBHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    return-void
.end method

.method public static updatePrioritySenderPriority(Landroid/content/Context;JJ)I
    .locals 5
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # J

    const-string v2, "mms/GlanceUtil"

    const-string v3, "updatePrioritySenderPriority()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "pri"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/glance/GlanceDBHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    return v2
.end method
