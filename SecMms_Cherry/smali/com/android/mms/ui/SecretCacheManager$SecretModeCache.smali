.class public Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;
.super Ljava/lang/Object;
.source "SecretCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SecretCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecretModeCache"
.end annotation


# static fields
.field public static isSecretInvalid:Z = false

.field private static final mDisableDump:Z = true

.field private static sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretInvalid:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$400()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static delete(J)V
    .locals 2

    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    return-void
.end method

.method public static dump()V
    .locals 0

    return-void
.end method

.method public static fill()V
    .locals 12

    const/4 v5, 0x0

    const-string v1, "Mms/SecretCacheManager"

    const-string v2, "SecretModeCache fill() begin"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/SecretCacheManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager;->SECRET_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/SecretCacheManager;->selection:Ljava/lang/String;

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v1, "Mms/SecretCacheManager"

    const-string v2, "null Cursor in fill()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v1, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    new-instance v8, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v1, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecretModeCache fill() id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secretmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v1, "Mms/SecretCacheManager"

    const-string v2, "SecretModeCache fill() finished"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    return-object v0
.end method

.method public static getSecretAvatar(J)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->invalidateCache()V

    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v2, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    if-eqz v0, :cond_0

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_2
    const-string v1, "Mms/SecretCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecretAvatar, mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$200(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSecretMode(J)I
    .locals 5

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->invalidateCache()V

    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v2, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    if-eqz v0, :cond_1

    const-string v1, "Mms/SecretCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecretMode, mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secret_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v2, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecretMode, Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secret_mode= 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$1;

    invoke-direct {v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static insert(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V
    .locals 2

    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    return-void
.end method

.method public static invalidateCache()V
    .locals 4

    sget-boolean v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretInvalid:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "Mms/SecretCacheManager"

    const-string v3, "invalidate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v2, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    # setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretInvalid:Z

    const-string v2, "Mms/SecretCacheManager"

    const-string v3, "invalidate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSecretMode(J)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->invalidateCache()V

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v3, v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-static {p0, p1, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    if-eqz v0, :cond_3

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v3

    cmp-long v3, p0, v3

    if-nez v3, :cond_3

    const-string v3, "Mms/SecretCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSecret, mId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mId:J
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$100(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secret_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    if-eq v3, v2, :cond_2

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mSecretMode:I
    invoke-static {v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$000(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const-string v2, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecret, Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secret_mode= false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static update(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V
    .locals 2

    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v0, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->dump()V

    return-void
.end method

.method public static updateDBandCache(JLjava/lang/String;)Z
    .locals 12

    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    move-object v8, p2

    const-string v1, "content://com.android.contacts/private"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager;->CONTACT_COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/SecretCacheManager;->selection:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v1, "Mms/SecretCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecretModeCache updateDBandCache() id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is_private="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDbPrivateContact(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v3, v3, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    if-eqz v7, :cond_1

    monitor-enter v7

    const/4 v3, 0x0

    :try_start_1
    # setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v7, v3}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDbPrivateContact(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v1, v1, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    if-eqz v7, :cond_4

    monitor-enter v7

    const/4 v1, 0x0

    :try_start_3
    # setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {v7, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public static updateDbPrivateContact(JZ)V
    .locals 5

    move-wide v1, p0

    move v0, p2

    const-string v3, "Mms/SecretCacheManager"

    const-string v4, "updateDbPrivateContact() begin"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$2;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$2;-><init>(JZ)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static updateDbSecretThread(JZ)V
    .locals 5

    move-wide v1, p0

    move v0, p2

    const-string v3, "Mms/SecretCacheManager"

    const-string v4, "updateDbSecretThread() begin"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache$3;-><init>(JZ)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static updateInvalidatedCache(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V
    .locals 6

    const/16 v5, 0x3b

    const/4 v4, 0x0

    const/4 v3, -0x1

    sget-object v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->sInstance:Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;

    iget-object v0, v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v3, :cond_1

    new-instance v2, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;

    invoke-direct {v2, p0, p1, v4}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;-><init>(JI)V

    invoke-static {p0, p1, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->insert(JLcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDBandCache(JLjava/lang/String;)Z

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {p2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$300(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v2, v3, :cond_3

    monitor-enter p2

    const/4 v2, 0x0

    :try_start_0
    # setter for: Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->mIsStale:Z
    invoke-static {p2, v2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;->access$302(Lcom/android/mms/ui/SecretCacheManager$SecretModeCacheData;Z)Z

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->updateDBandCache(JLjava/lang/String;)Z

    goto :goto_0
.end method
