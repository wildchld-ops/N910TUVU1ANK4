.class public Lcom/mobeam/barcodeService/system/AppService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/mobeam/barcodeService/service/impl/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mobeam/barcodeService/system/AppService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mobeam/barcodeService/system/AppService;)Lcom/mobeam/mbss/service/DeviceAuth;
    .locals 1

    invoke-direct {p0}, Lcom/mobeam/barcodeService/system/AppService;->c()Lcom/mobeam/mbss/service/DeviceAuth;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/mobeam/barcodeService/system/ScreenEventReceiver;

    invoke-direct {v1}, Lcom/mobeam/barcodeService/system/ScreenEventReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerScreenEventReceiver error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobeam/barcodeService/system/AppService;Ljava/util/List;)V
    .locals 11

    invoke-direct {p0}, Lcom/mobeam/barcodeService/system/AppService;->c()Lcom/mobeam/mbss/service/DeviceAuth;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lcom/mobeam/mbss/service/BeamReport;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobeam/barcodeService/system/AppService;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/m;->a()Lcom/mobeam/mbss/service/MBSS;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/mobeam/mbss/service/MBSS;->report(Lcom/mobeam/mbss/service/DeviceAuth;[Lcom/mobeam/mbss/service/BeamReport;)Lcom/mobeam/mbss/service/ReportResp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mobeam/barcodeService/system/AppService;->b()Lcom/mobeam/barcodeService/a;

    move-result-object v1

    iget-object v0, v0, Lcom/mobeam/mbss/service/ReportResp;->flags:Lcom/mobeam/mbss/service/Flags;

    invoke-virtual {v1, v0}, Lcom/mobeam/barcodeService/a;->a(Lcom/mobeam/mbss/service/Flags;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/a/a/b;

    add-int/lit8 v2, v1, 0x1

    new-instance v6, Lcom/mobeam/mbss/service/BeamReport;

    iget-object v7, v0, Lcom/mobeam/barcodeService/a/a/b;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/mobeam/barcodeService/a/a/b;->g:Ljava/lang/String;

    iget-wide v9, v0, Lcom/mobeam/barcodeService/a/a/b;->c:J

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/mobeam/mbss/service/BeamReport;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v7, v0, Lcom/mobeam/barcodeService/a/a/b;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/mobeam/mbss/service/BeamReport;->barcodePattern:Ljava/lang/String;

    iget v7, v0, Lcom/mobeam/barcodeService/a/a/b;->b:I

    iput v7, v6, Lcom/mobeam/mbss/service/BeamReport;->beamingDuration:I

    iget-object v7, v0, Lcom/mobeam/barcodeService/a/a/b;->d:Ljava/lang/String;

    iput-object v7, v6, Lcom/mobeam/mbss/service/BeamReport;->location:Ljava/lang/String;

    iget v7, v0, Lcom/mobeam/barcodeService/a/a/b;->h:I

    iput v7, v6, Lcom/mobeam/mbss/service/BeamReport;->successFactor:I

    iget-object v7, v0, Lcom/mobeam/barcodeService/a/a/b;->e:Lcom/mobeam/barcodeService/service/MetaData;

    iget-object v7, v7, Lcom/mobeam/barcodeService/service/MetaData;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/mobeam/mbss/service/BeamReport;->campaignId:Ljava/lang/String;

    iget-object v7, v0, Lcom/mobeam/barcodeService/a/a/b;->e:Lcom/mobeam/barcodeService/service/MetaData;

    iget-object v7, v7, Lcom/mobeam/barcodeService/service/MetaData;->b:Ljava/lang/String;

    iput-object v7, v6, Lcom/mobeam/mbss/service/BeamReport;->productName:Ljava/lang/String;

    iget-object v7, v0, Lcom/mobeam/barcodeService/a/a/b;->e:Lcom/mobeam/barcodeService/service/MetaData;

    iget-object v7, v7, Lcom/mobeam/barcodeService/service/MetaData;->c:Ljava/lang/String;

    iput-object v7, v6, Lcom/mobeam/mbss/service/BeamReport;->productType:Ljava/lang/String;

    iget v7, v0, Lcom/mobeam/barcodeService/a/a/b;->j:I

    iput v7, v6, Lcom/mobeam/mbss/service/BeamReport;->actualBeamDuration:I

    iget-object v0, v0, Lcom/mobeam/barcodeService/a/a/b;->i:Lcom/mobeam/barcodeService/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mobeam/mbss/service/BeamReport;->beamStatus:Ljava/lang/String;

    aput-object v6, v4, v1

    move v1, v2

    goto :goto_0
.end method

.method private b()Lcom/mobeam/barcodeService/a;
    .locals 3

    new-instance v0, Lcom/mobeam/barcodeService/a;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mobeam/barcodeService/system/AppService;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v0, v1, v2}, Lcom/mobeam/barcodeService/a;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    return-object v0
.end method

.method static synthetic b(Lcom/mobeam/barcodeService/system/AppService;)Lcom/mobeam/barcodeService/a;
    .locals 1

    invoke-direct {p0}, Lcom/mobeam/barcodeService/system/AppService;->b()Lcom/mobeam/barcodeService/a;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/mobeam/mbss/service/DeviceAuth;
    .locals 2

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/b;

    iget-object v1, p0, Lcom/mobeam/barcodeService/system/AppService;->b:Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v0, p0, v1}, Lcom/mobeam/barcodeService/service/impl/b;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/b;->b()Lcom/mobeam/mbss/service/DeviceAuth;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/m;

    invoke-direct {v0}, Lcom/mobeam/barcodeService/service/impl/m;-><init>()V

    iput-object v0, p0, Lcom/mobeam/barcodeService/system/AppService;->b:Lcom/mobeam/barcodeService/service/impl/m;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/system/AppService;->a(Landroid/content/Context;)V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/GCMIntentService;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand: received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/GCMIntentService;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand: received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/GCMIntentService;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "com.mobeam.barcodeService.LOCATION_FIX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    sget-object v1, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v0, "providerEnabled"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v1, "com.mobeam.barcodeService.PULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/mobeam/barcodeService/system/AppService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand: received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/mobeam/barcodeService/system/AppService;->b()Lcom/mobeam/barcodeService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/a;->a()V

    goto/16 :goto_0

    :cond_9
    const-string v1, "com.mobeam.barcodeService.REGISTER_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mobeam/barcodeService/service/impl/e;->a(Landroid/content/Context;)V

    :cond_a
    new-instance v1, Lcom/mobeam/barcodeService/system/a;

    invoke-direct {v1, p0, v0}, Lcom/mobeam/barcodeService/system/a;-><init>(Lcom/mobeam/barcodeService/system/AppService;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
