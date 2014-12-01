.class public Lcom/android/mms/util/EcidLookup;
.super Ljava/lang/Object;
.source "EcidLookup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/EcidLookup$EcidContact;,
        Lcom/android/mms/util/EcidLookup$EcidContentObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ECID_AOSP_VERSION:Ljava/lang/String; = "9.4.3.0"

.field private static final LOOKUP_URI:Landroid/net/Uri;

.field private static final MAX_NOTIFICATION_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "EcidLookup"

.field private static sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/util/EcidLookup$EcidContact;",
            ">;"
        }
    .end annotation
.end field

.field private static sEcidObserver:Lcom/android/mms/util/EcidLookup$EcidContentObserver;

.field private static sHandler:Landroid/os/Handler;

.field private static sSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.cequint.ecid/smslookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/EcidLookup;->LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->initSendersCache(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    return-object v0
.end method

.method public static addSender(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/EcidLookup;->addSender(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/mms/util/EcidLookup;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addSender(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static delayedNotification(Landroid/content/Context;Landroid/net/Uri;ZLandroid/net/Uri;I)V
    .locals 2

    invoke-static {p0, p3}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/mms/util/EcidLookup;->delayedNotification(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static delayedNotification(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;I)V
    .locals 7

    invoke-static {p3}, Lcom/android/mms/util/EcidLookup;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/android/mms/util/EcidLookup$2;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/EcidLookup$2;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;ZI)V

    const/4 v6, 0x0

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/util/EcidLookup$EcidContact;

    iget-object v2, v6, Lcom/android/mms/util/EcidLookup$EcidContact;->pendingNotification:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    iput-object v0, v6, Lcom/android/mms/util/EcidLookup$EcidContact;->pendingNotification:Ljava/lang/Runnable;

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static doLookup(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/android/mms/util/EcidLookup;->LOOKUP_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "user"

    aput-object v3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dumpNameCache()V
    .locals 7

    const-string v3, "EcidLookup"

    const-string v4, "+++ Name Cache +++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/EcidLookup$EcidContact;

    const-string v3, "EcidLookup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/mms/util/EcidLookup$EcidContact;->queryPending:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/mms/util/EcidLookup$EcidContact;->pendingNotification:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "EcidLookup"

    const-string v4, "________________________________________________________"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dumpSendersCache()V
    .locals 4

    const-string v2, "EcidLookup"

    const-string v3, "+++ Senders Cache ++++++++++++++++++++++++++++++++++++++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "EcidLookup"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "EcidLookup"

    const-string v3, "________________________________________________________"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getBool(Landroid/database/Cursor;I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-le p1, v3, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static getEcidContactFromCursor(Landroid/database/Cursor;)Lcom/android/mms/util/EcidLookup$EcidContact;
    .locals 9

    const/4 v8, 0x0

    new-instance v3, Lcom/android/mms/util/EcidLookup$EcidContact;

    const/4 v7, 0x0

    invoke-direct {v3, v8, v7, v8}, Lcom/android/mms/util/EcidLookup$EcidContact;-><init>(Ljava/lang/String;ZLjava/lang/Runnable;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "cid_pName"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/mms/util/EcidLookup;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "cid_pCompany"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/mms/util/EcidLookup;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "cid_pLastName"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/mms/util/EcidLookup;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "cid_pFirstName"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/mms/util/EcidLookup;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "cid_pDisplayName"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/mms/util/EcidLookup;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "cid_pTempValue"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/mms/util/EcidLookup;->getBool(Landroid/database/Cursor;I)Z

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    iput-boolean v5, v3, Lcom/android/mms/util/EcidLookup$EcidContact;->queryPending:Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iput-object v2, v3, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v3

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iput-object v4, v3, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iput-object v6, v3, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iput-object v0, v3, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iput-object v1, v3, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getEcidName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "EcidLookup"

    const-string v3, "EcidLookup not initialized!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-static {p1}, Lcom/android/mms/util/EcidLookup;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/mms/util/EcidLookup;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/EcidLookup$EcidContact;

    iget-object v1, v1, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/mms/util/EcidLookup;->doLookup(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/EcidLookup;->getEcidContactFromCursor(Landroid/database/Cursor;)Lcom/android/mms/util/EcidLookup$EcidContact;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasUpdateFor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/EcidLookup$EcidContact;

    iget-object v0, v1, Lcom/android/mms/util/EcidLookup$EcidContact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    const-class v1, Lcom/android/mms/util/EcidLookup;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    :cond_1
    new-instance v0, Lcom/android/mms/util/EcidLookup$EcidContentObserver;

    invoke-direct {v0}, Lcom/android/mms/util/EcidLookup$EcidContentObserver;-><init>()V

    sput-object v0, Lcom/android/mms/util/EcidLookup;->sEcidObserver:Lcom/android/mms/util/EcidLookup$EcidContentObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/util/EcidLookup;->sHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/util/EcidLookup;->LOOKUP_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    sget-object v4, Lcom/android/mms/util/EcidLookup;->sEcidObserver:Lcom/android/mms/util/EcidLookup$EcidContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/util/EcidLookup$1;

    invoke-direct {v2, p0}, Lcom/android/mms/util/EcidLookup$1;-><init>(Landroid/content/Context;)V

    const-string v3, "EcidLookup.init"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initSendersCache(Landroid/content/Context;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v2, v9

    const-string v3, "type=\'1\' OR type=\'0\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/EcidLookup;->addSender(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v9

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/util/EcidLookup;->addSender(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static invalidateCache(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/EcidLookup$EcidContact;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/mms/util/EcidLookup$EcidContact;->pendingNotification:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private static isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static shouldWaitForEcidName(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/EcidLookup;->shouldWaitForEcidName(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static shouldWaitForEcidName(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/mms/util/EcidLookup;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sSenders:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/EcidLookup$EcidContact;

    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/mms/util/EcidLookup$EcidContact;->queryPending:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
