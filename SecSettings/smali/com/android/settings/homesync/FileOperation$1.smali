.class Lcom/android/settings/homesync/FileOperation$1;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperation;-><init>(Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperation;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "HomeSyncFileOperation"

    const-string v1, "before doFileOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/homesync/FileOperationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "HomeSyncFileOperation"

    const-string v1, "before doFileOperation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    invoke-virtual {v0}, Lcom/android/settings/homesync/FileOperation;->doFileOperation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # invokes: Lcom/android/settings/homesync/FileOperation;->releasePowerWakeLock()V
    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->access$100(Lcom/android/settings/homesync/FileOperation;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/homesync/FileOperationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->access$300(Lcom/android/settings/homesync/FileOperation;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->futureTaskRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/homesync/FileOperation;->access$200(Lcom/android/settings/homesync/FileOperation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    iput-object v0, v1, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # invokes: Lcom/android/settings/homesync/FileOperation;->releasePowerWakeLock()V
    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->access$100(Lcom/android/settings/homesync/FileOperation;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/homesync/FileOperationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # invokes: Lcom/android/settings/homesync/FileOperation;->releasePowerWakeLock()V
    invoke-static {v1}, Lcom/android/settings/homesync/FileOperation;->access$100(Lcom/android/settings/homesync/FileOperation;)V

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation$1;->this$0:Lcom/android/settings/homesync/FileOperation;

    # getter for: Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/homesync/FileOperation;->access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings/homesync/FileOperationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    throw v0
.end method
