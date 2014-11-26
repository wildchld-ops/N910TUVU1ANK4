.class public Lcom/android/mms/Omacp;
.super Ljava/lang/Object;
.source "Omacp.java"


# static fields
.field private static final SET_CP_ACTION:Ljava/lang/String; = "android.intent.action.SET_CP"

.field private static final TAG:Ljava/lang/String; = "Mms/Omacp"

.field private static sCpUri:Landroid/net/Uri;

.field private static sOmacpObserver:Lcom/android/mms/Omacp;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOmacpChanged:Z

.field private mIsOmacpCount:I

.field private final mWsOmacpObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/Omacp;->sCpUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/Omacp;->mIsOmacpChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/Omacp;->mIsOmacpCount:I

    new-instance v0, Lcom/android/mms/Omacp$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/Omacp$1;-><init>(Lcom/android/mms/Omacp;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/Omacp;->mWsOmacpObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/mms/Omacp;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/Omacp;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/Omacp;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/Omacp;->mIsOmacpChanged:Z

    return p1
.end method

.method public static getInstance()Lcom/android/mms/Omacp;
    .locals 2

    sget-object v0, Lcom/android/mms/Omacp;->sOmacpObserver:Lcom/android/mms/Omacp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/Omacp;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/Omacp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/Omacp;->sOmacpObserver:Lcom/android/mms/Omacp;

    :cond_0
    sget-object v0, Lcom/android/mms/Omacp;->sOmacpObserver:Lcom/android/mms/Omacp;

    return-object v0
.end method


# virtual methods
.method public addMenu(Landroid/view/Menu;I)V
    .locals 2
    .param p1    # Landroid/view/Menu;
    .param p2    # I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/mms/Omacp;->mIsOmacpCount:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0c0004

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public broadcastSetCp(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_CP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public declared-synchronized checkOmacp()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/Omacp;->mIsOmacpChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "Mms/Omacp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOmacp() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/Omacp;->mIsOmacpChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsOmacpCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/Omacp;->mIsOmacpCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/android/mms/Omacp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/Omacp;->sCpUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/mms/Omacp;->sCpUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/mms/Omacp;->mIsOmacpCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/Omacp;->mIsOmacpChanged:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v7

    :try_start_4
    const-string v1, "Mms/Omacp"

    const-string v2, "com.wsomacp.messagelist provider error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_4

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v1

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    :cond_6
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public registerObserver()V
    .locals 4

    const-string v0, "Mms/Omacp"

    const-string v1, "registerObserver"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/Omacp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/Omacp;->sCpUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/Omacp;->mWsOmacpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    const-string v0, "Mms/Omacp"

    const-string v1, "unregisterObserver"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/Omacp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/Omacp;->mWsOmacpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
