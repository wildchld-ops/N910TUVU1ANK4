.class Lcom/android/mms/ui/StickerDownloadManager$1;
.super Ljava/lang/Object;
.source "StickerDownloadManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/StickerDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/StickerDownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/StickerDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/StickerDownloadManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onServiceConnected()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/mms/ui/StickerDownloadManager;->mService:Landroid/os/Messenger;
    invoke-static {v2, v3}, Lcom/android/mms/ui/StickerDownloadManager;->access$102(Lcom/android/mms/ui/StickerDownloadManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    const/4 v3, 0x1

    # setter for: Lcom/android/mms/ui/StickerDownloadManager;->mBound:Z
    invoke-static {v2, v3}, Lcom/android/mms/ui/StickerDownloadManager;->access$202(Lcom/android/mms/ui/StickerDownloadManager;Z)Z

    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->mPendingMessageList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/StickerDownloadManager;->access$300(Lcom/android/mms/ui/StickerDownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    # invokes: Lcom/android/mms/ui/StickerDownloadManager;->sendMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/StickerDownloadManager;->access$400(Lcom/android/mms/ui/StickerDownloadManager;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->mPendingMessageList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/StickerDownloadManager;->access$300(Lcom/android/mms/ui/StickerDownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/StickerDownloadManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/StickerDownloadManager;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/mms/ui/StickerDownloadManager;->access$102(Lcom/android/mms/ui/StickerDownloadManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/mms/ui/StickerDownloadManager$1;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/StickerDownloadManager;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/StickerDownloadManager;->access$202(Lcom/android/mms/ui/StickerDownloadManager;Z)Z

    return-void
.end method
