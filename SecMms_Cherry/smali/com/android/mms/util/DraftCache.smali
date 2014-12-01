.class public Lcom/android/mms/util/DraftCache;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DraftCache$OnDraftContentsChangedListener;,
        Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    }
.end annotation


# static fields
.field static final COLUMN_DRAFT_THREAD_ID:I = 0x0

.field static final DRAFT_PROJECTION:[Ljava/lang/String;

.field private static final DUMP:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/DraftCache"

.field public static isInvalidDraft:Z

.field private static final sDraftObserverMms:Landroid/database/ContentObserver;

.field private static final sDraftObserverSms:Landroid/database/ContentObserver;

.field private static sInstance:Lcom/android/mms/util/DraftCache;


# instance fields
.field private final mChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/util/DraftCache$OnDraftChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDraftContentsChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/util/DraftCache$OnDraftContentsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDraftSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    new-instance v0, Lcom/android/mms/util/DraftCache$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/util/DraftCache$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sDraftObserverSms:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/util/DraftCache$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/util/DraftCache$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sDraftObserverMms:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftContentsChangeListeners:Ljava/util/HashSet;

    const-string v0, "Mms/DraftCache"

    const-string v1, "DraftCache()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->refresh()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DraftCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/util/DraftCache;->rebuildCache()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/DraftCache;
    .locals 1

    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/DraftCache"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/util/DraftCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DraftCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/DraftCache;->sDraftObserverSms:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/DraftCache;->sDraftObserverMms:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private declared-synchronized rebuildCache()V
    .locals 21

    monitor-enter p0

    :try_start_0
    const-string v2, "Mms/DraftCache"

    const-string v3, "rebuildCache"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/mms/TimeChecker;

    invoke-direct {v10}, Lcom/android/mms/TimeChecker;-><init>()V

    invoke-virtual {v10}, Lcom/android/mms/TimeChecker;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    new-instance v15, Ljava/util/HashSet;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    sget-boolean v2, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    if-eqz v11, :cond_3

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_1

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    if-eqz v11, :cond_3

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/util/DraftCache;->dump()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    const-string v2, "Mms/DraftCache"

    const-string v3, "rebuildCache"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v17, Ljava/util/HashSet;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Lcom/android/mms/TimeChecker;->end()Ljava/lang/String;

    const-string v2, "Mms/DraftCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "done rebuild draft cache, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/mms/TimeChecker;->getElapsed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,start notifying..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-wide/from16 v0, v19

    invoke-interface {v14, v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZZ)V

    goto :goto_2

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-wide/from16 v0, v19

    invoke-interface {v14, v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZZ)V

    goto :goto_3

    :cond_7
    const-string v2, "Mms/DraftCache"

    const-string v3, "rebuildCache"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addOnDraftContentsChangedListener(Lcom/android/mms/util/DraftCache$OnDraftContentsChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftContentsChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCache()V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string v9, "Mms/DraftCache"

    const-string v10, "clearCache"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/TimeChecker;

    invoke-direct {v1}, Lcom/android/mms/TimeChecker;-><init>()V

    invoke-virtual {v1}, Lcom/android/mms/TimeChecker;->start()V

    iget-object v5, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    iget-object v9, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_0

    const-string v9, "Mms/DraftCache"

    const-string v10, "clearCache"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/android/mms/TimeChecker;->end()Ljava/lang/String;

    const-string v9, "Mms/DraftCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "done clear draft cache, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/mms/TimeChecker;->getElapsed()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,start notifying..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v4, v7, v8, v9, v10}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_2
    :try_start_2
    const-string v9, "Mms/DraftCache"

    const-string v10, "clearCache"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public declared-synchronized hasDraft(J)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public refresh()V
    .locals 2

    const-string v0, "Mms/DraftCache"

    const-string v1, "refresh()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/DraftCache$3;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DraftCache$3;-><init>(Lcom/android/mms/util/DraftCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeOnDraftContentsChangedListener(Lcom/android/mms/util/DraftCache$OnDraftContentsChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftContentsChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZ)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/DraftCache;->setDraftState(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZZ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v5, "Mms/DraftCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDraftState(),threadId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",hasDraft="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gtz v5, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p3, :cond_2

    :try_start_1
    iget-object v5, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->dump()V

    if-eqz p4, :cond_0

    if-eqz v1, :cond_3

    const-string v5, "Mms/DraftCache"

    const-string v6, "notify draft changed"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, p3, v5}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_0

    const-string v5, "Mms/DraftCache"

    const-string v6, "notify draft contents changed"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/util/DraftCache;->mDraftContentsChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/util/DraftCache$OnDraftContentsChangedListener;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/mms/util/DraftCache$OnDraftContentsChangedListener;->onDraftContentsChanged(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
