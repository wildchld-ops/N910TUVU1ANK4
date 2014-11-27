.class final Lcom/mobeam/barcodeService/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/mobeam/barcodeService/a;


# direct methods
.method constructor <init>(Lcom/mobeam/barcodeService/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Lcom/mobeam/barcodeService/a;->c()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    iget-object v1, v1, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobeam/barcodeService/c/a;->a(Landroid/content/Context;)Lcom/mobeam/barcodeService/c/a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/mobeam/barcodeService/c/a;->f()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    invoke-static {}, Lcom/mobeam/barcodeService/a;->c()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/mobeam/barcodeService/service/impl/b;

    iget-object v3, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    iget-object v3, v3, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    invoke-static {v4}, Lcom/mobeam/barcodeService/a;->a(Lcom/mobeam/barcodeService/a;)Lcom/mobeam/barcodeService/service/impl/m;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/mobeam/barcodeService/service/impl/b;-><init>(Landroid/content/Context;Lcom/mobeam/barcodeService/service/impl/m;)V

    invoke-virtual {v1}, Lcom/mobeam/barcodeService/service/impl/b;->b()Lcom/mobeam/mbss/service/DeviceAuth;

    move-result-object v1

    iget-object v3, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    invoke-static {v3}, Lcom/mobeam/barcodeService/a;->a(Lcom/mobeam/barcodeService/a;)Lcom/mobeam/barcodeService/service/impl/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobeam/barcodeService/service/impl/m;->a()Lcom/mobeam/mbss/service/MBSS;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mobeam/barcodeService/c/a;->g()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v4, v5, v6}, Lcom/mobeam/mbss/service/MBSS;->getMessages(Lcom/mobeam/mbss/service/DeviceAuth;JLjava/lang/String;)Lcom/mobeam/mbss/service/PullMessages;

    move-result-object v3

    iget-wide v4, v3, Lcom/mobeam/mbss/service/PullMessages;->ts:J

    iget-object v1, v2, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "LAST_SERVER_UPDATE"

    invoke-interface {v1, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "LAST_PULL"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, v3, Lcom/mobeam/mbss/service/PullMessages;->messages:[Lcom/mobeam/mbss/service/PushMessage;

    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/mobeam/mbss/service/PullMessages;->messages:[Lcom/mobeam/mbss/service/PushMessage;

    array-length v5, v4

    move v1, v0

    :goto_1
    if-lt v1, v5, :cond_5

    :cond_2
    iget-object v1, v3, Lcom/mobeam/mbss/service/PullMessages;->notifications:[Lcom/mobeam/mbss/service/BSANotification;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/mobeam/barcodeService/b/a;

    iget-object v4, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    iget-object v4, v4, Lcom/mobeam/barcodeService/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/mobeam/barcodeService/b/a;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Lcom/mobeam/mbss/service/PullMessages;->notifications:[Lcom/mobeam/mbss/service/BSANotification;

    array-length v5, v4

    :goto_2
    if-lt v0, v5, :cond_6

    :cond_3
    iget v0, v3, Lcom/mobeam/mbss/service/PullMessages;->intervalSec:I

    if-lez v0, :cond_4

    const-wide/16 v0, 0x3e8

    iget v3, v3, Lcom/mobeam/mbss/service/PullMessages;->intervalSec:I

    int-to-long v3, v3

    mul-long/2addr v0, v3

    iget-object v2, v2, Lcom/mobeam/barcodeService/c/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PULL_INTERVAL"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-static {}, Lcom/mobeam/barcodeService/a;->c()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_3
    iget-object v0, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    invoke-static {v0}, Lcom/mobeam/barcodeService/a;->b(Lcom/mobeam/barcodeService/a;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    aget-object v6, v4, v1

    iget-object v7, p0, Lcom/mobeam/barcodeService/b;->a:Lcom/mobeam/barcodeService/a;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/mobeam/barcodeService/a;->a(Lcom/mobeam/mbss/service/PushMessage;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    aget-object v6, v4, v0

    invoke-virtual {v1, v6}, Lcom/mobeam/barcodeService/b/a;->a(Lcom/mobeam/mbss/service/BSANotification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/mobeam/barcodeService/a;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pullMessages: Failed pulling messages: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/mobeam/barcodeService/a;->c()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/mobeam/barcodeService/a;->c()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
