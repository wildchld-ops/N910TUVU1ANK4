.class final Lcom/mobeam/barcodeService/service/impl/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/mobeam/barcodeService/service/impl/e;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/mobeam/barcodeService/service/impl/n;

.field private final synthetic d:Z

.field private final synthetic e:Lcom/mobeam/barcodeService/service/a;


# direct methods
.method constructor <init>(Lcom/mobeam/barcodeService/service/impl/e;Ljava/lang/String;Lcom/mobeam/barcodeService/service/impl/n;ZLcom/mobeam/barcodeService/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iput-object p2, p0, Lcom/mobeam/barcodeService/service/impl/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobeam/barcodeService/service/impl/f;->c:Lcom/mobeam/barcodeService/service/impl/n;

    iput-boolean p4, p0, Lcom/mobeam/barcodeService/service/impl/f;->d:Z

    iput-object p5, p0, Lcom/mobeam/barcodeService/service/impl/f;->e:Lcom/mobeam/barcodeService/service/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->e(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->f(Lcom/mobeam/barcodeService/service/impl/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->g(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/app/BarBeamCommand;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->e(Lcom/mobeam/barcodeService/service/impl/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v0}, Lcom/mobeam/barcodeService/service/impl/e;->c(Lcom/mobeam/barcodeService/service/impl/e;)Lcom/mobeam/barcodeService/service/impl/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobeam/barcodeService/service/impl/f;->c:Lcom/mobeam/barcodeService/service/impl/n;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAuthToken: authenticating: userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Lcom/mobeam/mbss/service/AppAuth;

    invoke-direct {v3}, Lcom/mobeam/mbss/service/AppAuth;-><init>()V

    iput-object v1, v3, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    iget-object v1, v2, Lcom/mobeam/barcodeService/service/impl/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobeam/barcodeService/service/impl/b;->a(Ljava/lang/String;)Lcom/mobeam/mbss/service/Package;

    move-result-object v0

    iput-object v0, v3, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    new-instance v0, Lcom/mobeam/barcodeService/service/impl/d;

    invoke-direct {v0, v2, v3}, Lcom/mobeam/barcodeService/service/impl/d;-><init>(Lcom/mobeam/barcodeService/service/impl/n;Lcom/mobeam/mbss/service/AppAuth;)V

    new-instance v2, Lcom/mobeam/barcodeService/service/impl/j;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-boolean v3, p0, Lcom/mobeam/barcodeService/service/impl/f;->d:Z

    iget-object v4, p0, Lcom/mobeam/barcodeService/service/impl/f;->e:Lcom/mobeam/barcodeService/service/a;

    invoke-direct {v2, v1, v3, v4}, Lcom/mobeam/barcodeService/service/impl/j;-><init>(Lcom/mobeam/barcodeService/service/impl/e;ZLcom/mobeam/barcodeService/service/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "open() - new Client ID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v1}, Lcom/mobeam/barcodeService/service/impl/e;->b(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040001

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/mobeam/barcodeService/service/impl/d;->b:Lcom/mobeam/mbss/service/AppAuth;

    iget-object v3, v3, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/mobeam/barcodeService/service/impl/d;->b:Lcom/mobeam/mbss/service/AppAuth;

    iget-object v3, v3, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, v2, Lcom/mobeam/barcodeService/service/impl/j;->j:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v1}, Lcom/mobeam/barcodeService/service/impl/e;->b(Lcom/mobeam/barcodeService/service/impl/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/mobeam/barcodeService/service/impl/a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_4
    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/f;->e:Lcom/mobeam/barcodeService/service/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mobeam/barcodeService/service/impl/a;->a()Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mobeam/barcodeService/service/a;->b(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect.Thread.run: RemoteException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thrown while reporting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    :try_start_5
    iget-object v3, v2, Lcom/mobeam/barcodeService/service/impl/j;->j:Lcom/mobeam/barcodeService/service/impl/e;

    invoke-static {v3}, Lcom/mobeam/barcodeService/service/impl/e;->c(Lcom/mobeam/barcodeService/service/impl/e;)Lcom/mobeam/barcodeService/service/impl/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mobeam/barcodeService/service/impl/b;->a(Lcom/mobeam/barcodeService/service/impl/d;)Lcom/mobeam/barcodeService/service/impl/c;

    move-result-object v3

    iget-object v0, v3, Lcom/mobeam/barcodeService/service/impl/c;->a:Lcom/mobeam/barcodeService/service/impl/n;

    iput-object v0, v2, Lcom/mobeam/barcodeService/service/impl/j;->f:Lcom/mobeam/barcodeService/service/impl/n;

    iget-object v0, v3, Lcom/mobeam/barcodeService/service/impl/c;->b:Lcom/mobeam/barcodeService/a/a/a;

    iget-object v0, v0, Lcom/mobeam/barcodeService/a/a/a;->g:Lcom/mobeam/mbss/service/AppInfo;

    iget-object v0, v0, Lcom/mobeam/mbss/service/AppInfo;->id:Ljava/lang/String;

    iput-object v0, v2, Lcom/mobeam/barcodeService/service/impl/j;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Authenticated: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/mobeam/barcodeService/service/impl/j;->f:Lcom/mobeam/barcodeService/service/impl/n;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", app ID = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/mobeam/barcodeService/service/impl/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, v3, Lcom/mobeam/barcodeService/service/impl/c;->b:Lcom/mobeam/barcodeService/a/a/a;

    iget-object v0, v0, Lcom/mobeam/barcodeService/a/a/a;->g:Lcom/mobeam/mbss/service/AppInfo;

    iget-object v0, v0, Lcom/mobeam/mbss/service/AppInfo;->hopSettings:Ljava/lang/String;

    new-instance v4, Lcom/mobeam/barcodeService/service/impl/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object v0, v1

    :cond_5
    invoke-direct {v4, v0}, Lcom/mobeam/barcodeService/service/impl/l;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/mobeam/barcodeService/service/impl/j;->g:Lcom/mobeam/barcodeService/service/impl/l;

    iget-object v0, v3, Lcom/mobeam/barcodeService/service/impl/c;->b:Lcom/mobeam/barcodeService/a/a/a;

    iget-object v0, v0, Lcom/mobeam/barcodeService/a/a/a;->g:Lcom/mobeam/mbss/service/AppInfo;

    iget-boolean v0, v0, Lcom/mobeam/mbss/service/AppInfo;->reportLocation:Z

    iput-boolean v0, v2, Lcom/mobeam/barcodeService/service/impl/j;->h:Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/mobeam/barcodeService/service/impl/a; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    :try_start_6
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/f;->a:Lcom/mobeam/barcodeService/service/impl/e;

    iget-object v0, v0, Lcom/mobeam/barcodeService/service/impl/e;->b:Ljava/util/Hashtable;

    iget-object v1, v2, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open() - session ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Lcom/mobeam/barcodeService/service/impl/a; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    iget-object v0, p0, Lcom/mobeam/barcodeService/service/impl/f;->e:Lcom/mobeam/barcodeService/service/a;

    iget-object v1, v2, Lcom/mobeam/barcodeService/service/impl/j;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mobeam/barcodeService/service/a;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/mobeam/barcodeService/service/impl/a; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Lcom/mobeam/barcodeService/service/impl/a; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error authenticating: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_9
    iget-object v1, p0, Lcom/mobeam/barcodeService/service/impl/f;->e:Lcom/mobeam/barcodeService/service/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mobeam/barcodeService/service/MobeamErrorCode;->n:Lcom/mobeam/barcodeService/service/MobeamErrorCode;

    invoke-interface {v1, v2, v3}, Lcom/mobeam/barcodeService/service/a;->b(Ljava/lang/String;Lcom/mobeam/barcodeService/service/MobeamErrorCode;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :catch_6
    move-exception v0

    :try_start_a
    throw v0

    :catch_7
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    throw v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catch Lcom/mobeam/barcodeService/service/impl/a; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
.end method
