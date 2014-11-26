.class public abstract Lcom/android/mms/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/Recycler$MmsRecycler;,
        Lcom/android/mms/util/Recycler$SmsRecycler;
    }
.end annotation


# static fields
.field private static final DATE_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_AUTO_DELETE:Z = false

.field private static final DELETE_SEGMENT_SIZE:I = 0xa

.field private static final LOCAL_DEBUG:Z = true

.field private static final SEGMENTED_DELETE_MINIMUM_COUNT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Mms/Recycler"

.field private static sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

.field private static sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/Recycler;->DATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/util/Recycler;->DATE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static checkForThreadsOverLimit(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    invoke-virtual {v2, p0}, Lcom/android/mms/util/Recycler$SmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/Recycler$MmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v3, "Mms/Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForThreadsOverLimit(),return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;
    .locals 1

    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/Recycler$MmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$MmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    return-object v0
.end method

.method public static getRecycleStatus()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getSmsRecycleStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v1, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMmsRecycleStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;
    .locals 1

    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/Recycler$SmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$SmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    return-object v0
.end method

.method public static isAutoDeleteEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_auto_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract anyThreadOverLimit(Landroid/content/Context;)Z
.end method

.method protected abstract deleteMessagesForThread(Landroid/content/Context;JI)V
.end method

.method public deleteOldMessages(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "Mms/Recycler"

    const-string v5, "deleteOldMessages - null cursor"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/mms/util/Recycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # J

    const-string v0, "Mms/Recycler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycler.deleteOldMessagesByThreadId threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method protected abstract dumpMessage(Landroid/database/Cursor;Landroid/content/Context;)V
.end method

.method protected abstract getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getMessageLimit(Landroid/content/Context;)I
.end method

.method public getMessageMaxLimit()I
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method public getMessageMinLimit()I
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method protected abstract getThreadId(Landroid/database/Cursor;)J
.end method

.method public abstract setMessageLimit(Landroid/content/Context;I)V
.end method
