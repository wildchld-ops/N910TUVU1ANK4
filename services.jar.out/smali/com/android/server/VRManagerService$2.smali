.class Lcom/android/server/VRManagerService$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/server/VRManagerService$2;->this$0:Lcom/android/server/VRManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dockState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VRManagerService$2;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/VRManagerService;->access$200(Lcom/android/server/VRManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/VRManagerService$2;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/VRManagerService;->access$200(Lcom/android/server/VRManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/VRManagerService$2;->this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/VRManagerService;->access$200(Lcom/android/server/VRManagerService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
