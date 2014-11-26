.class public Lcom/android/mms/prioritysender/PrioritySenderCache;
.super Ljava/lang/Object;
.source "PrioritySenderCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/PrioritySenderCache"

.field private static sInstance:Lcom/android/mms/prioritysender/PrioritySenderCache;


# instance fields
.field private final mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/android/mms/prioritysender/PrioritySenderCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/prioritysender/PrioritySenderCache;->sInstance:Lcom/android/mms/prioritysender/PrioritySenderCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/prioritysender/PrioritySenderCache;

    invoke-direct {v0, p0}, Lcom/android/mms/prioritysender/PrioritySenderCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/prioritysender/PrioritySenderCache;->sInstance:Lcom/android/mms/prioritysender/PrioritySenderCache;

    sget-object v0, Lcom/android/mms/prioritysender/PrioritySenderCache;->sInstance:Lcom/android/mms/prioritysender/PrioritySenderCache;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    :cond_0
    sget-object v0, Lcom/android/mms/prioritysender/PrioritySenderCache;->sInstance:Lcom/android/mms/prioritysender/PrioritySenderCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized fillCache()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    sget-object v1, Lcom/android/mms/glance/GlanceDBHelper;->PRIORITY_SENDER_ALL_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "pri DESC"

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/glance/GlanceDBHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iget-object v11, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;-><init>(JLjava/lang/String;IJIJ)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(IJ)Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;
    .locals 4
    .param p1    # I
    .param p2    # J

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgType:I
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$100(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)I

    move-result v2

    if-ne v2, p1, :cond_0

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgId:J
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$200(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId(Ljava/lang/String;)J
    .locals 5
    .param p1    # Ljava/lang/String;

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$000(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mId:J
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$300(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getIdByThreadId(J)J
    .locals 6
    .param p1    # J

    const-wide/16 v2, 0x0

    monitor-enter p0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mThreadId:J
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$400(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mId:J
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$300(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getThreadId(Ljava/lang/String;)J
    .locals 5
    .param p1    # Ljava/lang/String;

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$000(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mThreadId:J
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$400(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isPrioritySender(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$000(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
    .param p4    # Landroid/content/ContentValues;

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p4, p2, p3, v1}, Lcom/android/mms/glance/GlanceDBHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Landroid/content/Context;JJIJ)Z
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # J
    .param p4    # J
    .param p6    # I
    .param p7    # J

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/mms/prioritysender/PrioritySenderCache;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mId:J
    invoke-static {v2}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$300(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;)J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-nez v6, :cond_0

    # setter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mThreadId:J
    invoke-static {v2, p4, p5}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$402(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;J)J

    move/from16 v0, p6

    # setter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgType:I
    invoke-static {v2, v0}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$102(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;I)I

    move-wide/from16 v0, p7

    # setter for: Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->mMsgId:J
    invoke-static {v2, v0, v1}, Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;->access$202(Lcom/android/mms/prioritysender/PrioritySenderCache$PrioritySender;J)J

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v6, "thread_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "msg_type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "msg_id"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p1}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/mms/glance/GlanceDBHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
