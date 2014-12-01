.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# static fields
.field public static final ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final ACTION_UPDATING_APPWIDGET_COMPLETED:Ljava/lang/String; = "com.samsung.android.intent.action.UPDATING_APPWIDGET_COMPLETED"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field public static final EXTRA_SECRET_MODE:Ljava/lang/String; = "secretMode"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"

.field static final TAG:Ljava/lang/String; = "AppWidgetManager"

.field static sContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/appwidget/AppWidgetManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private getContainerService()Lcom/sec/knox/container/IEnterpriseContainerService;
    .locals 2

    const-string v0, "container_service"

    sget-object v1, Landroid/appwidget/AppWidgetManager;->sContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-nez v1, :cond_0

    const-string v1, "container_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    sput-object v1, Landroid/appwidget/AppWidgetManager;->sContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    :cond_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .locals 6

    sget-object v4, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v3, :cond_0

    const-string v3, "appwidget"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    :cond_0
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetManager;

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Landroid/appwidget/AppWidgetManager;

    invoke-direct {v2, p0}, Landroid/appwidget/AppWidgetManager;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isRemovingKnoxApp(Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v1, "sec_container_"

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v8, "sec_container_"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move v6, v7

    :cond_1
    :goto_0
    return v6

    :cond_2
    :try_start_0
    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager;->getContainerService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 4

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .locals 7

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "system server dead?"

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v5

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "system server dead?"

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;Landroid/os/UserHandle;)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4

    :try_start_0
    sget-object v2, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(II)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(II)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInstalledKnoxProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledKnoxProviders(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledKnoxProviders(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v6, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v6, p1, v7}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/appwidget/AppWidgetManager;->isRemovingKnoxApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "system server dead?"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v6, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v6, p1, v7}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v7}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/appwidget/AppWidgetManager;->isRemovingKnoxApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.launcher2.WidgetReceiver"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "system server dead?"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-boolean v6, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    iget-object v6, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources;->addAppsNames(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-object v3
.end method

.method public getSecretAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4

    :try_start_0
    sget-object v2, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getSecretAppWidgetInfo(II)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(II)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    return-void
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged([III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->unbindRemoteViewsService(ILandroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds([ILandroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 3

    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(ILandroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
