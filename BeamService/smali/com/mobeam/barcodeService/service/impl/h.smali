.class final Lcom/mobeam/barcodeService/service/impl/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobeam/barcodeService/service/impl/e;

.field private final synthetic b:Lcom/mobeam/barcodeService/service/a;


# direct methods
.method constructor <init>(Lcom/mobeam/barcodeService/service/impl/e;Lcom/mobeam/barcodeService/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iput-object p2, p0, Lcom/mobeam/barcodeService/service/impl/h;->b:Lcom/mobeam/barcodeService/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->e(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v1}, Lcom/mobeam/barcodeService/service/impl/e;->b(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mobeam/barcodeService/service/impl/e;->b(Landroid/content/Context;)Landroid/app/BarBeamCommand;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobeam/barcodeService/service/impl/e;->a(Lcom/mobeam/barcodeService/service/impl/e;Landroid/app/BarBeamCommand;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->b:Lcom/mobeam/barcodeService/service/a;

    const/4 v1, 0x0

    sget-object v3, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->b:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-interface {v0, v1, v3}, Lcom/mobeam/barcodeService/service/a;->b(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V

    :goto_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->b(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v1

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mobeam/barcodeService/c/a;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->i(Lcom/mobeam/barcodeService/service/impl/e;)V

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->e(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initBarBeam.Runnable.run: barBeam = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v1}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/h;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v1, v1, Lcom/mobeam/barcodeService/service/impl/e;->d:Lcom/mobeam/barcodeService/service/impl/i;

    invoke-interface {v0, v1}, Landroid/app/BarBeamCommand;->addListener(Landroid/app/BarBeamListener;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :try_start_4
    iget-object v3, p0, Lcom/mobeam/barcodeService/service/impl/h;->b:Lcom/mobeam/barcodeService/service/a;

    sget-object v4, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->k:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-interface {v3, v1, v4}, Lcom/mobeam/barcodeService/service/a;->b(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initBarBeam.Runnable.run: RemoteException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " thrown on Exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    :try_start_7
    iget-object v3, p0, Lcom/mobeam/barcodeService/service/impl/h;->b:Lcom/mobeam/barcodeService/service/a;

    sget-object v4, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->n:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-interface {v3, v1, v4}, Lcom/mobeam/barcodeService/service/a;->b(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initBarBeam.Runnable.run: RemoteException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " thrown on Exception "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method
