.class public Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
.super Ljava/lang/Object;
.source "VOLanguagePackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# instance fields
.field private languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

.field private mAvailableListUpdate:Z

.field public mContext:Landroid/content/Context;

.field private mDownloadingListUpdate:Z

.field private mInstalledListUpdate:Z

.field private mIsRegisterReceiver:Z

.field private mLanguagePacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/VOLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field public mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

.field public mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

.field public mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

.field mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

.field public rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

.field public rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    iput-object v7, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    iput-object v7, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-direct {v5, p1, p0}, Lcom/visionobjects/resourcemanager/RMHelper;-><init>(Landroid/content/Context;Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    new-instance v5, Lcom/visionobjects/resourcemanager/RMLauncher;

    invoke-direct {v5, p1}, Lcom/visionobjects/resourcemanager/RMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    invoke-static {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setLanguagePacksManager(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.visionobjects.resourcemanager"

    const-string v6, "com.visionobjects.resourcemanager.ResourceManagerService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    if-nez v5, :cond_0

    new-instance v5, Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    invoke-direct {v5, p0, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    :cond_0
    invoke-direct {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->resourceManagerStartQuery()V

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v5}, Lcom/visionobjects/resourcemanager/RMHelper;->getAvailableList()V

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v5}, Lcom/visionobjects/resourcemanager/RMHelper;->getInstalledLangList()V

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v5}, Lcom/visionobjects/resourcemanager/RMHelper;->getDownloadingLangList()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_RESULT"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-direct {v5, p0}, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_PROGRESS"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-direct {v5, p0}, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.visionobjects.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-direct {v5, p0}, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    iget-object v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-direct {v0, p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    :cond_0
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-object v0
.end method

.method private getLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v0

    return-object v0
.end method

.method private resourceManagerStartQuery()V
    .locals 9

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mRMQueryAsyncHandler:Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;

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

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public clearInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstance:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    return-object v0
.end method

.method public getEnginePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getEnginePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0, p1, p2}, Lcom/visionobjects/resourcemanager/RMHelper;->getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v0, "ar"

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public registerReceiver()V
    .locals 5

    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    if-nez v3, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_RESULT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-direct {v3, p0}, Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG_PROGRESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-direct {v3, p0}, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.visionobjects.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-direct {v3, p0}, Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;-><init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V

    iput-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    iget-object v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    :cond_0
    return-void
.end method

.method public removeLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->deleteLanguage()V

    :cond_0
    return-void
.end method

.method public setProgressLanguage(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnUpdate:Lcom/visionobjects/resourcemanager/receiver/RMUpdateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnProgress:Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mOnDelete:Lcom/visionobjects/resourcemanager/receiver/RMDeleteReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mIsRegisterReceiver:Z

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateFailure(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->notifyFailed()V

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getPrevState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    :cond_0
    return-void
.end method

.method public updateSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->notifySuccess()V

    :cond_0
    return-void
.end method

.method public updateVOLanguagePackManager(Lcom/touchtype_fluency/util/RefreshListener;)V
    .locals 1
    .param p1    # Lcom/touchtype_fluency/util/RefreshListener;

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    iput-boolean v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    iput-boolean v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    iput-boolean v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getAvailableList()V

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getInstalledLangList()V

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmHelper:Lcom/visionobjects/resourcemanager/RMHelper;

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/RMHelper;->getDownloadingLangList()V

    return-void
.end method

.method public updateVOlangugaeList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/RMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/RMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/visionobjects/resourcemanager/RMLanguageModel;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-direct {v3, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    :cond_1
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    invoke-direct {v3, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getCurrentState()I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    :goto_2
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->setAvailableHWRLanguage()V

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isWaitingforHWRResource()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    :cond_4
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    :cond_5
    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v3, :cond_6

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setState(I)V

    goto :goto_3

    :cond_7
    iput-boolean v6, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    :cond_8
    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mAvailableListUpdate:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mInstalledListUpdate:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->mDownloadingListUpdate:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    sget-object v5, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-interface {v4, v5}, Lcom/touchtype_fluency/util/RefreshListener;->onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->languagelistlistener:Lcom/touchtype_fluency/util/RefreshListener;

    :cond_9
    return-void
.end method
