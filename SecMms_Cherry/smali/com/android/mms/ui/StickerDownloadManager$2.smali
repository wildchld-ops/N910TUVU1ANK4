.class Lcom/android/mms/ui/StickerDownloadManager$2;
.super Landroid/os/Handler;
.source "StickerDownloadManager.java"


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
.method constructor <init>(Lcom/android/mms/ui/StickerDownloadManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/StickerDownloadManager$2;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "key_item_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/StickerDownloadManager$2;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->mReplyHandlerMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/mms/ui/StickerDownloadManager;->access$500(Lcom/android/mms/ui/StickerDownloadManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iget v4, p1, Landroid/os/Message;->what:I

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/StickerDownloadManager$2;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->mReplyHandlerMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/mms/ui/StickerDownloadManager;->access$500(Lcom/android/mms/ui/StickerDownloadManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/StickerDownloadManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReplyHandlerMap : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/StickerDownloadManager$2;->this$0:Lcom/android/mms/ui/StickerDownloadManager;

    # getter for: Lcom/android/mms/ui/StickerDownloadManager;->mReplyHandlerMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/mms/ui/StickerDownloadManager;->access$500(Lcom/android/mms/ui/StickerDownloadManager;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
