.class Lcom/android/mms/freemessage/FileTransfer$7$1;
.super Ljava/lang/Thread;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FileTransfer$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/freemessage/FileTransfer$7;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FileTransfer$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->val$index:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->val$index:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v7, v6, Lcom/android/mms/freemessage/FileTransfer$7;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->val$obj:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/app/share/via/external/ShareviaObj;

    # invokes: Lcom/android/mms/freemessage/FileTransfer;->nativeAccessForShareviaObj(Lcom/samsung/app/share/via/external/ShareviaObj;)V
    invoke-static {v7, v6}, Lcom/android/mms/freemessage/FileTransfer;->access$1600(Lcom/android/mms/freemessage/FileTransfer;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v8, v6, Lcom/android/mms/freemessage/FileTransfer$7;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->val$fileName:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v7, v7, Lcom/android/mms/freemessage/FileTransfer$7;->val$filePath:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    # invokes: Lcom/android/mms/freemessage/FileTransfer;->videoResizingProgress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v6, v7}, Lcom/android/mms/freemessage/FileTransfer;->access$1700(Lcom/android/mms/freemessage/FileTransfer;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x1

    sput v6, Lcom/android/mms/freemessage/FileTransfer;->mNativeAccessReturnValue:I

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    const/4 v7, 0x1

    # setter for: Lcom/android/mms/freemessage/FileTransfer;->mOutFileSizeEstimated:I
    invoke-static {v6, v7}, Lcom/android/mms/freemessage/FileTransfer;->access$1802(Lcom/android/mms/freemessage/FileTransfer;I)I

    new-instance v7, Ljava/io/File;

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->val$fileName:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/freemessage/FileTransfer;->access$600()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/mms/freemessage/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/mms/freemessage/FileTransfer;->access$500(Lcom/android/mms/freemessage/FileTransfer;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v6, 0x3e8

    iput v6, v4, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/android/mms/freemessage/FileTransfer$7$1;->this$1:Lcom/android/mms/freemessage/FileTransfer$7;

    iget-object v6, v6, Lcom/android/mms/freemessage/FileTransfer$7;->this$0:Lcom/android/mms/freemessage/FileTransfer;

    # getter for: Lcom/android/mms/freemessage/FileTransfer;->mCompleteResizeHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/freemessage/FileTransfer;->access$1900(Lcom/android/mms/freemessage/FileTransfer;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
