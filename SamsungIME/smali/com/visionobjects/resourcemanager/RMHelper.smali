.class public Lcom/visionobjects/resourcemanager/RMHelper;
.super Ljava/lang/Object;
.source "RMHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;,
        Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;,
        Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;
    }
.end annotation


# static fields
.field public static final RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private client:Landroid/content/ContentProviderClient;

.field private cr:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field private mParent:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

.field mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

.field mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

.field mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lang"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mParent:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    const-string v1, "com.visionobjects.resourcemanager"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    return-void
.end method

.method static synthetic access$000(Lcom/visionobjects/resourcemanager/RMHelper;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mParent:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-object v0
.end method

.method private resourceManagerGetAvailableQuery()V
    .locals 9

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/visionobjects/resourcemanager/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private resourceManagerGetDownloadingQuery()V
    .locals 9

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Downloading;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/visionobjects/resourcemanager/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private resourceManagerGetInstalledQuery()V
    .locals 9

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/visionobjects/resourcemanager/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public getAvailableList()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/RMHelper;->resourceManagerGetAvailableQuery()V

    return-void
.end method

.method public getDownloadingLangList()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/RMHelper;->resourceManagerGetDownloadingQuery()V

    return-void
.end method

.method public getEnginePath()Ljava/lang/String;
    .locals 9

    const-string v8, ""

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Engine;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Engine;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v8

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v6, :cond_0

    goto :goto_1
.end method

.method public getInstalledLangList()V
    .locals 2

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/visionobjects/resourcemanager/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/RMHelper;->resourceManagerGetInstalledQuery()V

    return-void
.end method

.method public getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/visionobjects/resourcemanager/ResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMHelper;->client:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v8, v9, 0x1

    const-string v0, "resource"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v8

    goto :goto_1

    :catch_0
    move-exception v7

    sget-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    sget-object v0, Lcom/visionobjects/resourcemanager/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v10

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_1

    goto :goto_2
.end method
