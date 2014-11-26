.class Lcom/android/launcher2/LauncherExModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    const/4 v2, 0x1

    # setter for: Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$302(Lcom/android/launcher2/LauncherExModel$LoaderTask;Z)Z

    const-string v0, "LauncherExModel"

    const-string v2, "done with first binding step"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
