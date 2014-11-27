.class final Lcom/mobeam/barcodeService/service/impl/j;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/mobeam/barcodeService/service/a;

.field c:Ljava/lang/String;

.field d:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

.field e:Ljava/lang/String;

.field f:Lcom/mobeam/barcodeService/service/impl/n;

.field g:Lcom/mobeam/barcodeService/service/impl/l;

.field h:Z

.field i:Z

.field final synthetic j:Lcom/mobeam/barcodeService/service/impl/e;


# direct methods
.method public constructor <init>(Lcom/mobeam/barcodeService/service/impl/e;ZLcom/mobeam/barcodeService/service/a;)V
    .locals 4

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/j;->j:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/j;->j:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->a(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide v2, 0xcfd41b9100000L

    rem-long/2addr v0, v2

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/mobeam/barcodeService/service/impl/j;->i:Z

    iput-object p3, p0, Lcom/mobeam/barcodeService/service/impl/j;->b:Lcom/mobeam/barcodeService/service/a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/j;->f:Lcom/mobeam/barcodeService/service/impl/n;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget v2, v0, Lcom/mobeam/barcodeService/service/impl/n;->a:I

    if-eq v2, v1, :cond_0

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not authorized ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/mobeam/barcodeService/service/impl/n;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "!="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Exception;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    :try_start_0
    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/j;->b:Lcom/mobeam/barcodeService/service/a;

    invoke-interface {v1, v0, p2}, Lcom/mobeam/barcodeService/service/a;->a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/j;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobeam/barcodeService/service/impl/j;->d:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    return-void
.end method
