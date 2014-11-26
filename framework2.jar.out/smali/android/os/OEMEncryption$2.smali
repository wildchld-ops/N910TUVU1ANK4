.class Landroid/os/OEMEncryption$2;
.super Landroid/os/storage/StorageEventListener;
.source "OEMEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OEMEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/OEMEncryption;


# direct methods
.method constructor <init>(Landroid/os/OEMEncryption;)V
    .locals 0

    iput-object p1, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v3, 0x1

    const-string v0, "OEMEncryption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStorageStateChanged called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". New state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v0}, Landroid/os/OEMEncryption;->access$200(Landroid/os/OEMEncryption;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    # setter for: Landroid/os/OEMEncryption;->EXTERNAL_SD_STATE:Ljava/lang/String;
    invoke-static {v0, p3}, Landroid/os/OEMEncryption;->access$302(Landroid/os/OEMEncryption;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OEMEncryption"

    const-string v1, "In (newState.equals(Environment.MEDIA_MOUNTED))"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    invoke-virtual {v0}, Landroid/os/OEMEncryption;->isCurrentSDCardEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OEMEncryption"

    const-string v1, "Dismissing the notification beacuse SD card is encrypted now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/os/OEMEncryption;->access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->mSDPolicy:Z
    invoke-static {v0}, Landroid/os/OEMEncryption;->access$500(Landroid/os/OEMEncryption;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    iget-object v1, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->mSDPolicy:Z
    invoke-static {v1}, Landroid/os/OEMEncryption;->access$500(Landroid/os/OEMEncryption;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/OEMEncryption;->setSDEncryptionPolicy(Z)V

    :cond_3
    const-string/jumbo v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OEMEncryption"

    const-string v1, "Dismissing the notification beacuse SD card was unmounted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/os/OEMEncryption$2;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/os/OEMEncryption;->access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
