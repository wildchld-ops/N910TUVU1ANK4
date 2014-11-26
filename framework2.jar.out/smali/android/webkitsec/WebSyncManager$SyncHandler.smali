.class Landroid/webkitsec/WebSyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "WebSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebSyncManager;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebSyncManager;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/WebSyncManager$SyncHandler;->this$0:Landroid/webkitsec/WebSyncManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebSyncManager;Landroid/webkitsec/WebSyncManager$1;)V
    .locals 0
    .param p1    # Landroid/webkitsec/WebSyncManager;
    .param p2    # Landroid/webkitsec/WebSyncManager$1;

    invoke-direct {p0, p1}, Landroid/webkitsec/WebSyncManager$SyncHandler;-><init>(Landroid/webkitsec/WebSyncManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/16 v2, 0x65

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebSyncManager$SyncHandler;->this$0:Landroid/webkitsec/WebSyncManager;

    invoke-virtual {v1}, Landroid/webkitsec/WebSyncManager;->syncFromRamToFlash()V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    # getter for: Landroid/webkitsec/WebSyncManager;->SYNC_LATER_INTERVAL:I
    invoke-static {}, Landroid/webkitsec/WebSyncManager;->access$000()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
