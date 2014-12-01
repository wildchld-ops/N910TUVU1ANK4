.class Lcom/android/server/VRManagerService$1;
.super Landroid/os/Handler;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VRManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/VRManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$100(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "VRManagerService"

    const-string v2, "VRConnection timeout for VRService!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$100(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VRManagerService$VRConnection;->close()V

    iget-object v0, p0, Lcom/android/server/VRManagerService$1;->this$0:Lcom/android/server/VRManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/VRManagerService;->mConnection:Lcom/android/server/VRManagerService$VRConnection;
    invoke-static {v0, v2}, Lcom/android/server/VRManagerService;->access$102(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$VRConnection;)Lcom/android/server/VRManagerService$VRConnection;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
