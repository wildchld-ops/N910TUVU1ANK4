.class Lcom/android/server/cover/CoverManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    # setter for: Lcom/android/server/cover/CoverManagerService;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/cover/CoverManagerService;->access$002(Lcom/android/server/cover/CoverManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverManagerService;->getCoverAttachStateFromInputManager()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    # invokes: Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V
    invoke-static {v4, v1, v2}, Lcom/android/server/cover/CoverManagerService;->access$100(Lcom/android/server/cover/CoverManagerService;ZZ)V

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    # invokes: Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V
    invoke-static {v1, v3, v2}, Lcom/android/server/cover/CoverManagerService;->access$200(Lcom/android/server/cover/CoverManagerService;ZZ)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method
