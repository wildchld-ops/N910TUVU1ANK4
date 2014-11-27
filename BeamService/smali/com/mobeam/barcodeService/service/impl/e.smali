.class public final Lcom/mobeam/barcodeService/service/impl/e;
.super Lcom/mobeam/barcodeService/service/e;


# static fields
.field public static c:Z

.field private static final e:Lcom/mobeam/barcodeService/service/impl/k;

.field private static synthetic o:[I


# instance fields
.field a:Ljava/util/Vector;

.field b:Ljava/util/Hashtable;

.field public d:Lcom/mobeam/barcodeService/service/impl/i;

.field private volatile f:Ljava/lang/Thread;

.field private g:Landroid/app/BarBeamCommand;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/content/Context;

.field private final k:Ljava/security/SecureRandom;

.field private final l:Lcom/mobeam/barcodeService/service/impl/b;

.field private m:Landroid/os/Handler;

.field private n:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/k;->a:Lcom/mobeam/barcodeService/service/impl/k;

    sput-object v0, Lcom/mobeam/barcodeService/service/impl/e;->e:Lcom/mobeam/barcodeService/service/impl/k;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobeam/barcodeService/service/impl/e;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/mobeam/barcodeService/service/e;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->a:Ljava/util/Vector;

    iput-boolean v2, p0, Lcom/mobeam/barcodeService/service/impl/e;->h:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->n:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/i;

    invoke-direct {v0, p0, v2}, Lcom/mobeam/barcodeService/service/impl/i;-><init>(Lcom/mobeam/barcodeService/service/impl/e;B)V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/b;

    invoke-direct {v0, p1, p2}, Lcom/mobeam/barcodeService/service/impl/b;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->l:Lcom/mobeam/barcodeService/service/impl/b;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->k:Ljava/security/SecureRandom;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->k:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/c/a;->h()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mobeam/barcodeService/service/impl/e;->c(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mobeam/barcodeService/c/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/mobeam/barcodeService/a/a/b;Lcom/mobeam/barcodeService/a/a/c;)V
    .locals 1

    iput-object p2, p1, Lcom/mobeam/barcodeService/a/a/b;->i:Lcom/mobeam/barcodeService/a/a/c;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobeam/barcodeService/a/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobeam/barcodeService/a/a;->a(Lcom/mobeam/barcodeService/a/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/mobeam/barcodeService/service/impl/e;Landroid/app/BarBeamCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/e;->g:Landroid/app/BarBeamCommand;

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Landroid/app/BarBeamCommand;
    .locals 1

    invoke-static {p0}, Lcom/mobeam/barcodeService/service/impl/e;->c(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Landroid/app/BarBeamCommand;
    .locals 2

    invoke-static {}, Lcom/mobeam/barcodeService/service/impl/e;->e()[I

    move-result-object v0

    sget-object v1, Lcom/mobeam/barcodeService/service/impl/e;->e:Lcom/mobeam/barcodeService/service/impl/k;

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/service/impl/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "barbeam"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BarBeamCommand;

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Missing direver"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/mobeam/barcodeService/service/impl/e;)Lcom/mobeam/barcodeService/service/impl/b;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->l:Lcom/mobeam/barcodeService/service/impl/b;

    return-object v0
.end method

.method static synthetic c()Lcom/mobeam/barcodeService/service/impl/k;
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/e;->e:Lcom/mobeam/barcodeService/service/impl/k;

    return-object v0
.end method

.method static synthetic d(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->n:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/impl/j;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/service/impl/j;

    goto :goto_0
.end method

.method static synthetic e(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic e()[I
    .locals 3

    sget-object v0, Lcom/mobeam/barcodeService/service/impl/e;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mobeam/barcodeService/service/impl/k;->values()[Lcom/mobeam/barcodeService/service/impl/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mobeam/barcodeService/service/impl/k;->a:Lcom/mobeam/barcodeService/service/impl/k;

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/service/impl/k;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mobeam/barcodeService/service/impl/k;->b:Lcom/mobeam/barcodeService/service/impl/k;

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/service/impl/k;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/mobeam/barcodeService/service/impl/e;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic f(Lcom/mobeam/barcodeService/service/impl/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->g:Landroid/app/BarBeamCommand;

    return-object v0
.end method

.method static synthetic h(Lcom/mobeam/barcodeService/service/impl/e;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic i(Lcom/mobeam/barcodeService/service/impl/e;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mobeam/barcodeService/service/impl/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobeam/barcodeService/service/impl/e;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobeam/barcodeService/service/impl/e;->c:Z

    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;ZLcom/mobeam/barcodeService/service/a;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect: userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/GCMIntentService;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/system/AppService;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobeam/barcodeService/service/impl/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mobeam.barcodeService.LOCATION_FIX"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    const-string v2, "network"

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->m:Landroid/os/Handler;

    new-instance v1, Lcom/mobeam/barcodeService/service/impl/h;

    invoke-direct {v1, p0, p3}, Lcom/mobeam/barcodeService/service/impl/h;-><init>(Lcom/mobeam/barcodeService/service/impl/e;Lcom/mobeam/barcodeService/service/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->l:Lcom/mobeam/barcodeService/service/impl/b;

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/b;->a()Lcom/mobeam/barcodeService/service/impl/n;

    move-result-object v3

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/f;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mobeam/barcodeService/service/impl/f;-><init>(Lcom/mobeam/barcodeService/service/impl/e;Ljava/lang/String;Lcom/mobeam/barcodeService/service/impl/n;ZLcom/mobeam/barcodeService/service/a;)V

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/f;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestLocationFix error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;[BLcom/mobeam/barcodeService/service/MetaData;J)V
    .locals 9

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startBeaming: session ID = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", barcode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", MetaData = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/mobeam/barcodeService/service/MetaData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", duration = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mobeam/barcodeService/service/impl/e;->e(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/impl/j;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-boolean v0, v3, Lcom/mobeam/barcodeService/service/impl/j;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, v3, Lcom/mobeam/barcodeService/service/impl/j;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/mobeam/barcodeService/a/a/b;

    invoke-static {p2}, Lcom/mobeam/barcodeService/c/b;->a([B)Ljava/lang/String;

    move-result-object v1

    long-to-int v4, p4

    invoke-direct {v2, p3, v1, v4, v0}, Lcom/mobeam/barcodeService/a/a/b;-><init>(Lcom/mobeam/barcodeService/service/MetaData;Ljava/lang/String;ILandroid/location/Location;)V

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->l:Lcom/mobeam/barcodeService/service/impl/b;

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/b;->a()Lcom/mobeam/barcodeService/service/impl/n;

    move-result-object v0

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/n;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/mobeam/barcodeService/a/a/b;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/mobeam/barcodeService/a/a/b;->g:Ljava/lang/String;

    sget-object v0, Lcom/mobeam/barcodeService/a/a/c;->a:Lcom/mobeam/barcodeService/a/a/c;

    invoke-direct {p0, v2, v0}, Lcom/mobeam/barcodeService/service/impl/e;->a(Lcom/mobeam/barcodeService/a/a/b;Lcom/mobeam/barcodeService/a/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, v3, Lcom/mobeam/barcodeService/service/impl/j;->f:Lcom/mobeam/barcodeService/service/impl/n;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/n;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/mobeam/barcodeService/a/a/b;->f:Ljava/lang/String;

    iget-object v0, v3, Lcom/mobeam/barcodeService/service/impl/j;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/mobeam/barcodeService/a/a/b;->g:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/service/impl/j;->a()V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->g:Landroid/app/BarBeamCommand;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-virtual {v3, v0, v1}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    sget-object v0, Lcom/mobeam/barcodeService/a/a/c;->c:Lcom/mobeam/barcodeService/a/a/c;

    invoke-direct {p0, v2, v0}, Lcom/mobeam/barcodeService/service/impl/e;->a(Lcom/mobeam/barcodeService/a/a/b;Lcom/mobeam/barcodeService/a/a/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->j:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-virtual {v3, v0, v1}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    sget-object v0, Lcom/mobeam/barcodeService/a/a/c;->e:Lcom/mobeam/barcodeService/a/a/c;

    invoke-direct {p0, v2, v0}, Lcom/mobeam/barcodeService/service/impl/e;->a(Lcom/mobeam/barcodeService/a/a/b;Lcom/mobeam/barcodeService/a/a/c;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    sget-object v1, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->a:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-virtual {v3, v0, v1}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iget-object v1, v3, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/mobeam/barcodeService/service/impl/i;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iget-object v1, p3, Lcom/mobeam/barcodeService/service/MetaData;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/mobeam/barcodeService/service/impl/i;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->n:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/g;

    move-object v1, p0

    move-object v4, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mobeam/barcodeService/service/impl/g;-><init>(Lcom/mobeam/barcodeService/service/impl/e;Lcom/mobeam/barcodeService/a/a/b;Lcom/mobeam/barcodeService/service/impl/j;[BJ)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mobeam.barcodeService.UPLOAD_BEAM_RECORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x20000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/c/a;->e()Lcom/mobeam/mbss/service/DeviceConf;

    move-result-object v4

    iget v1, v4, Lcom/mobeam/mbss/service/DeviceConf;->reportIntervalSec:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v7, 0xea60

    add-long/2addr v2, v7

    iget v4, v4, Lcom/mobeam/mbss/service/DeviceConf;->reportIntervalSec:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "isBeaming(): "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-direct {p0}, Lcom/mobeam/barcodeService/service/impl/e;->d()V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->g:Landroid/app/BarBeamCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->n:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0xfa0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->g:Landroid/app/BarBeamCommand;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    invoke-interface {v0, v1}, Landroid/app/BarBeamCommand;->removeListener(Landroid/app/BarBeamListener;)V

    :cond_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/e;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/GCMIntentService;->b(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopBeaming: session ID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mobeam/barcodeService/service/impl/e;->e(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/impl/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/j;->a()V

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/e;->g:Landroid/app/BarBeamCommand;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iget-object v1, v1, Lcom/mobeam/barcodeService/service/impl/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->i:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mobeam/barcodeService/service/impl/e;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/MobeamErrorCode;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mobeam/barcodeService/service/impl/e;->e(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/impl/j;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->m:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/j;->d:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mobeam/barcodeService/service/impl/e;->e(Ljava/lang/String;)Lcom/mobeam/barcodeService/service/impl/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/j;->c:Ljava/lang/String;

    goto :goto_0
.end method
