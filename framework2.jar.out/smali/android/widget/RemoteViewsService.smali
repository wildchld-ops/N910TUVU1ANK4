.class public abstract Landroid/widget/RemoteViewsService;
.super Landroid/app/Service;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;,
        Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    }
.end annotation


# static fields
.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViewsService"

.field private static mNoProductShip:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sRemoteViewFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/widget/RemoteViewsService;->mNoProductShip:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Landroid/widget/RemoteViewsService;->mNoProductShip:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    invoke-static {}, Landroid/widget/RemoteViewsService;->getDebugLevel()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getDebugLevel()I
    .locals 7

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string/jumbo v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v5, 0x4f4c

    if-eq v0, v5, :cond_0

    const/16 v5, 0x494d

    if-ne v0, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_0

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    sget-object v4, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsService;->onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    sget-object v3, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onCreate()V

    const/4 v2, 0x0

    :goto_0
    new-instance v3, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    invoke-direct {v3, v0, v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;-><init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V

    monitor-exit v4

    return-object v3

    :cond_0
    sget-object v3, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public abstract onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.end method
