.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$600(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
