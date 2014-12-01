.class Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;
.super Landroid/os/Handler;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4700(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4700(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4800(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;->unregisterClient(Landroid/os/IBinder;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4700(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4700(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mBinder:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4800(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/privatemode/PrivateModeManager;->unregisterClient(Landroid/os/IBinder;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
