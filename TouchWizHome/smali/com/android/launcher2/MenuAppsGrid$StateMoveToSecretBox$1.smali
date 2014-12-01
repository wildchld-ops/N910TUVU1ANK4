.class Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;
.super Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;
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

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    invoke-direct {p0}, Lcom/samsung/android/privatemode/IPrivateModeClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4700(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4700(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object v1

    # setter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4802(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;Landroid/os/IBinder;)Landroid/os/IBinder;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4900(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4900(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4900(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4900(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    # getter for: Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->access$4900(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x15 -> :sswitch_2
    .end sparse-switch
.end method
