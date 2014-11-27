.class final Lcom/mobeam/barcodeService/system/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/mobeam/barcodeService/system/AppService;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobeam/barcodeService/system/AppService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/system/a;->a:Lcom/mobeam/barcodeService/system/AppService;

    iput-object p2, p0, Lcom/mobeam/barcodeService/system/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "com.mobeam.barcodeService.UPLOAD_BEAM_RECORD"

    iget-object v1, p0, Lcom/mobeam/barcodeService/system/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobeam/barcodeService/system/a;->a:Lcom/mobeam/barcodeService/system/AppService;

    invoke-static {v0}, Lcom/mobeam/barcodeService/a/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/a/a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/mobeam/barcodeService/system/AppService;->a()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/mobeam/barcodeService/system/AppService;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " beam records to be uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/mobeam/barcodeService/system/a;->a:Lcom/mobeam/barcodeService/system/AppService;

    invoke-static {v2, v0}, Lcom/mobeam/barcodeService/system/AppService;->a(Lcom/mobeam/barcodeService/system/AppService;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/a/a/b;

    iget-wide v2, v0, Lcom/mobeam/barcodeService/a/a/b;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/mobeam/barcodeService/a/a;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mobeam/barcodeService/system/AppService;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Report sending failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "com.mobeam.barcodeService.REGISTER_DEVICE"

    iget-object v1, p0, Lcom/mobeam/barcodeService/system/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/system/a;->a:Lcom/mobeam/barcodeService/system/AppService;

    invoke-static {v0}, Lcom/mobeam/barcodeService/system/AppService;->a(Lcom/mobeam/barcodeService/system/AppService;)Lcom/mobeam/mbss/service/DeviceAuth;

    iget-object v0, p0, Lcom/mobeam/barcodeService/system/a;->a:Lcom/mobeam/barcodeService/system/AppService;

    invoke-static {v0}, Lcom/mobeam/barcodeService/system/AppService;->b(Lcom/mobeam/barcodeService/system/AppService;)Lcom/mobeam/barcodeService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/mobeam/barcodeService/system/AppService;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device register failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
