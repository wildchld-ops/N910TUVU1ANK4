.class final Lcom/mobeam/barcodeService/service/impl/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobeam/barcodeService/service/impl/e;

.field private final synthetic b:Lcom/mobeam/barcodeService/a/a/b;

.field private final synthetic c:Lcom/mobeam/barcodeService/service/impl/j;

.field private final synthetic d:[B

.field private final synthetic e:J


# direct methods
.method constructor <init>(Lcom/mobeam/barcodeService/service/impl/e;Lcom/mobeam/barcodeService/a/a/b;Lcom/mobeam/barcodeService/service/impl/j;[BJ)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iput-object p2, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    iput-object p3, p0, Lcom/mobeam/barcodeService/service/impl/g;->c:Lcom/mobeam/barcodeService/service/impl/j;

    iput-object p4, p0, Lcom/mobeam/barcodeService/service/impl/g;->d:[B

    iput-wide p5, p0, Lcom/mobeam/barcodeService/service/impl/g;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    iget-wide v1, v1, Lcom/mobeam/barcodeService/a/a/b;->c:J

    iput-wide v1, v0, Lcom/mobeam/barcodeService/service/impl/i;->a:J

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->c:Lcom/mobeam/barcodeService/service/impl/j;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/j;->g:Lcom/mobeam/barcodeService/service/impl/l;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/l;->a:Ljava/util/Vector;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Hop;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/Hop;

    invoke-interface {v1, v0}, Landroid/app/BarBeamCommand;->setHopSequence([Landroid/app/Hop;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/g;->d:[B

    invoke-interface {v0, v1}, Landroid/app/BarBeamCommand;->setBarcode([B)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/BarBeamCommand;->startBeaming()V

    invoke-static {}, Lcom/mobeam/barcodeService/service/impl/e;->c()Lcom/mobeam/barcodeService/service/impl/k;

    move-result-object v0

    sget-object v1, Lcom/mobeam/barcodeService/service/impl/k;->b:Lcom/mobeam/barcodeService/service/impl/k;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/i;->onBeamingStarted()V

    :cond_0
    iget-wide v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->e:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    const/4 v1, -0x1

    iput v1, v0, Lcom/mobeam/barcodeService/a/a/b;->h:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/BarBeamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    iget-object v0, v0, Lcom/mobeam/barcodeService/a/a/b;->i:Lcom/mobeam/barcodeService/a/a/c;

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->c:Lcom/mobeam/barcodeService/a/a/c;

    if-eq v0, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mobeam/barcodeService/service/impl/i;->b:J

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v1, v1, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iget-wide v1, v1, Lcom/mobeam/barcodeService/service/impl/i;->b:J

    iget-object v3, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v3, v3, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    iget-wide v3, v3, Lcom/mobeam/barcodeService/service/impl/i;->a:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/mobeam/barcodeService/a/a/b;->j:I

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/BarBeamCommand;->stopBeaming()V
    :try_end_1
    .catch Landroid/app/BarBeamException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    invoke-static {}, Lcom/mobeam/barcodeService/service/impl/e;->c()Lcom/mobeam/barcodeService/service/impl/k;

    move-result-object v0

    sget-object v1, Lcom/mobeam/barcodeService/service/impl/k;->b:Lcom/mobeam/barcodeService/service/impl/k;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/i;->onBeamingStoppped()V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->b(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/a/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    invoke-virtual {v0, v1}, Lcom/mobeam/barcodeService/a/a;->a(Lcom/mobeam/barcodeService/a/a/b;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->h(Lcom/mobeam/barcodeService/service/impl/e;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->d:Lcom/mobeam/barcodeService/a/a/c;

    iput-object v1, v0, Lcom/mobeam/barcodeService/a/a/b;->i:Lcom/mobeam/barcodeService/a/a/c;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/g;->c:Lcom/mobeam/barcodeService/service/impl/j;

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->k:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-virtual {v1, v0, v2}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/Exception;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->c:Lcom/mobeam/barcodeService/a/a/c;

    iput-object v1, v0, Lcom/mobeam/barcodeService/a/a/b;->i:Lcom/mobeam/barcodeService/a/a/c;

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/g;->c:Lcom/mobeam/barcodeService/service/impl/j;

    sget-object v2, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->l:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-virtual {v1, v0, v2}, Lcom/mobeam/barcodeService/service/impl/j;->a(Ljava/lang/Exception;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->b:Lcom/mobeam/barcodeService/a/a/b;

    sget-object v1, Lcom/mobeam/barcodeService/a/a/c;->c:Lcom/mobeam/barcodeService/a/a/c;

    iput-object v1, v0, Lcom/mobeam/barcodeService/a/a/b;->i:Lcom/mobeam/barcodeService/a/a/c;

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/app/BarBeamException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/g;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->d(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2
.end method
