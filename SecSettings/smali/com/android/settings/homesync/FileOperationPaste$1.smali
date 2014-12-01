.class Lcom/android/settings/homesync/FileOperationPaste$1;
.super Landroid/os/storage/StorageEventListener;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationPaste;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationPaste;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v2, "HomeSyncFileOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChanged path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "unmounted"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    # getter for: Lcom/android/settings/homesync/FileOperationPaste;->mFolderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/homesync/FileOperationPaste;->access$000(Lcom/android/settings/homesync/FileOperationPaste;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;

    iget-object v2, v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string v2, "HomeSyncFileOperation"

    const-string v3, "onStorageStateChanged path matched"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-virtual {v2}, Lcom/android/settings/homesync/FileOperation;->cancel()V

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperationPaste$1;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    sget-object v3, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->StorageDisconnected:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v3, v2, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    :cond_2
    return-void
.end method
