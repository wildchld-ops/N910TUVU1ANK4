.class final Lcom/mobeam/barcodeService/service/impl/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/BarBeamListener;


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field final synthetic e:Lcom/mobeam/barcodeService/service/impl/e;


# direct methods
.method private constructor <init>(Lcom/mobeam/barcodeService/service/impl/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/i;->e:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobeam/barcodeService/service/impl/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mobeam/barcodeService/service/impl/i;-><init>(Lcom/mobeam/barcodeService/service/impl/e;)V

    return-void
.end method


# virtual methods
.method public final onBeamingStarted()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBeamingStarted: beamItemId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beamStartTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mobeam/barcodeService/service/impl/i;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/mobeam/barcodeService/service/impl/i;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/i;->e:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/service/impl/j;

    iget-object v1, v0, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/i;->c:Ljava/lang/String;

    :goto_1
    iget-wide v4, p0, Lcom/mobeam/barcodeService/service/impl/i;->a:J

    :try_start_0
    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/j;->b:Lcom/mobeam/barcodeService/service/a;

    invoke-interface {v0, v1, v4, v5}, Lcom/mobeam/barcodeService/service/a;->b(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onBeamingStarted(): Error invoking listener method: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final onBeamingStoppped()V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBeamingStoppped: beamItemId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beamEndTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mobeam/barcodeService/service/impl/i;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/i;->e:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->d(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v3, p0, Lcom/mobeam/barcodeService/service/impl/i;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/i;->e:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide v7, p0, Lcom/mobeam/barcodeService/service/impl/i;->a:J

    iput-wide v7, p0, Lcom/mobeam/barcodeService/service/impl/i;->b:J

    iput-object v2, p0, Lcom/mobeam/barcodeService/service/impl/i;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobeam/barcodeService/service/impl/i;->d:Ljava/lang/String;

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobeam/barcodeService/service/impl/j;

    iget-object v1, v0, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/i;->c:Ljava/lang/String;

    :goto_1
    iget-wide v5, p0, Lcom/mobeam/barcodeService/service/impl/i;->b:J

    :try_start_0
    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/j;->b:Lcom/mobeam/barcodeService/service/a;

    invoke-interface {v0, v1, v5, v6}, Lcom/mobeam/barcodeService/service/a;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "onBeamingStopped(): Error invoking listener method: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1
.end method
