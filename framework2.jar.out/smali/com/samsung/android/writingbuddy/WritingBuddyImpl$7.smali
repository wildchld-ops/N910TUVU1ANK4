.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;
.super Lcom/samsung/android/writingbuddy/IWritingBuddyClient$Stub;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {p0}, Lcom/samsung/android/writingbuddy/IWritingBuddyClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageInserted(ILandroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v4, "WritingBuddyImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mServiceCallback onImageAdded() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mParentView:Landroid/view/View;
    invoke-static {v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$900(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResultReceived(ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceCallback onResultReceived() clientID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTextDeleted(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "WritingBuddyImpl"

    const-string/jumbo v2, "mServiceCallback onTextDeleted()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTextInserted(IILjava/lang/CharSequence;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "WritingBuddyImpl"

    const-string/jumbo v2, "mServiceCallback onTextInserted()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUpdateDialog(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "WritingBuddyImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceCallback onUpdateDialog() clientID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$7;->this$0:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    # getter for: Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->access$1000(Lcom/samsung/android/writingbuddy/WritingBuddyImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
