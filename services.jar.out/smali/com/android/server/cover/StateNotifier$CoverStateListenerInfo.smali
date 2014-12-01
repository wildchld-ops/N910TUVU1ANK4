.class Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    iput p5, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    iput p6, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string v0, "CoverManager.StateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$300(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$300(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCoverAttachStateChanged(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverAttachStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverStateChanged coverCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCoverSwitchStateChanged(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
