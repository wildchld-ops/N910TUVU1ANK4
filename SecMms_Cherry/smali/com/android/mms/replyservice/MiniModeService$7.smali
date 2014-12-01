.class Lcom/android/mms/replyservice/MiniModeService$7;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/MiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAllRequested()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public closeRequestedFrom(Landroid/content/ComponentName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->getComponentName()Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$800(Lcom/android/mms/replyservice/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public createSnapshot()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v2, v2, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MainView;->buildDrawingCache()V

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    iget-object v2, v2, Lcom/android/mms/replyservice/MiniModeService;->mMainView:Lcom/sec/android/app/minimode/MainView;

    invoke-virtual {v2}, Lcom/sec/android/app/minimode/MainView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public focusChanged(Landroid/content/ComponentName;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    const/4 v4, -0x1

    invoke-virtual {v3, v1, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideAllRequested()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public movementRequested(Landroid/content/ComponentName;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showAllRequested()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/replyservice/MiniModeService$7;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    # getter for: Lcom/android/mms/replyservice/MiniModeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/replyservice/MiniModeService;->access$500(Lcom/android/mms/replyservice/MiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
