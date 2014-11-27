.class public Lcom/mobeam/barcodeService/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/Semaphore;

.field private static synthetic e:[I


# instance fields
.field final a:Landroid/content/Context;

.field private final d:Lcom/mobeam/barcodeService/service/impl/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/mobeam/barcodeService/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/mobeam/barcodeService/a;->c:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v0}, Lcom/mobeam/barcodeService/service/impl/m;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/mobeam/barcodeService/a;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobeam/barcodeService/a;->d:Lcom/mobeam/barcodeService/service/impl/m;

    return-void
.end method

.method static synthetic a(Lcom/mobeam/barcodeService/a;)Lcom/mobeam/barcodeService/service/impl/m;
    .locals 1

    iget-object v0, p0, Lcom/mobeam/barcodeService/a;->d:Lcom/mobeam/barcodeService/service/impl/m;

    return-object v0
.end method

.method private a(Z)V
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobeam/barcodeService/c/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "GCM_REGISTERED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    sget-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "checkPullAlarm: GCM Registered: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v5, Landroid/content/Intent;

    const-string v0, "com.mobeam.barcodeService.PULL"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    const/high16 v6, 0x20000000

    invoke-static {v0, v3, v5, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v1, :cond_2

    if-nez v6, :cond_1

    sget-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    if-eqz v6, :cond_3

    sget-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/mobeam/barcodeService/c/a;->f()J

    move-result-wide v6

    iget-object v1, v4, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    const-string v4, "PULL_INTERVAL"

    const-wide v8, 0x9a7ec800L

    invoke-interface {v1, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sget-object v1, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "checkPullAlarm: Scheduling pull after "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " seconds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v5, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/mobeam/barcodeService/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobeam/barcodeService/a;->a(Z)V

    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/a;->c:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic e()[I
    .locals 3

    sget-object v0, Lcom/mobeam/barcodeService/a;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mobeam/mbss/service/PushMessage$Action;->values()[Lcom/mobeam/mbss/service/PushMessage$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->INVALIDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->PULL_MSGS:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->REQ_BEAM_REPORT:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mobeam/mbss/service/PushMessage$Action;->UPDATE_LICENSE:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/mobeam/barcodeService/a;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/mobeam/barcodeService/b;

    invoke-direct {v0, p0}, Lcom/mobeam/barcodeService/b;-><init>(Lcom/mobeam/barcodeService/a;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Lcom/mobeam/mbss/service/Flags;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/mobeam/mbss/service/Flags;->lastUpdate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v0

    iget-wide v1, p1, Lcom/mobeam/mbss/service/Flags;->lastUpdate:J

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/c/a;->g()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/mobeam/barcodeService/a;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/mobeam/mbss/service/PushMessage;Z)V
    .locals 9

    sget-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received push message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mobeam/mbss/service/PushMessage;->action2:Lcom/mobeam/mbss/service/PushMessage$Action;

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/mobeam/barcodeService/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid push message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/mobeam/barcodeService/a;->e()[I

    move-result-object v0

    iget-object v1, p1, Lcom/mobeam/mbss/service/PushMessage;->action2:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobeam/barcodeService/a/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;

    move-result-object v0

    iget-object v1, p1, Lcom/mobeam/mbss/service/PushMessage;->appPackage:Ljava/lang/String;

    iget-object v2, p1, Lcom/mobeam/mbss/service/PushMessage;->action2:Lcom/mobeam/mbss/service/PushMessage$Action;

    invoke-virtual {v0, v1, v2}, Lcom/mobeam/barcodeService/a/a;->a(Ljava/lang/String;Lcom/mobeam/mbss/service/PushMessage$Action;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mobeam.barcodeService.UPLOAD_BEAM_RECORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/c/a;->e()Lcom/mobeam/mbss/service/DeviceConf;

    move-result-object v4

    iget v1, v4, Lcom/mobeam/mbss/service/DeviceConf;->reportIntervalSec:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v7, 0x1388

    add-long/2addr v2, v7

    iget v4, v4, Lcom/mobeam/mbss/service/DeviceConf;->reportIntervalSec:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/mobeam/barcodeService/a;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobeam/barcodeService/a;->a(Z)V

    return-void
.end method
