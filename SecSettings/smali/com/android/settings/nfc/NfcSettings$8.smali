.class Lcom/android/settings/nfc/NfcSettings$8;
.super Landroid/os/Handler;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "NfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mReqHelpType:I
    invoke-static {v2}, Lcom/android/settings/nfc/NfcSettings;->access$1500(Lcom/android/settings/nfc/NfcSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mReqHelpType:I
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1500(Lcom/android/settings/nfc/NfcSettings;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    const-string v1, "toggle_sbeam"

    # invokes: Lcom/android/settings/nfc/NfcSettings;->updateCuePosY(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$1600(Lcom/android/settings/nfc/NfcSettings;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mReqHelpType:I
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1500(Lcom/android/settings/nfc/NfcSettings;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    const-string v1, "toggle_rw_p2p"

    # invokes: Lcom/android/settings/nfc/NfcSettings;->updateCuePosY(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$1600(Lcom/android/settings/nfc/NfcSettings;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3ea

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mReqHelpType:I
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1500(Lcom/android/settings/nfc/NfcSettings;)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpSbeam()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$500(Lcom/android/settings/nfc/NfcSettings;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mReqHelpType:I
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1500(Lcom/android/settings/nfc/NfcSettings;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpRwP2p()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1000(Lcom/android/settings/nfc/NfcSettings;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x3eb

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mReqHelpType:I
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1500(Lcom/android/settings/nfc/NfcSettings;)I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    const-string v1, "toggle_sbeam"

    # invokes: Lcom/android/settings/nfc/NfcSettings;->calculatePosY(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$1700(Lcom/android/settings/nfc/NfcSettings;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mReqHelpType:I
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1500(Lcom/android/settings/nfc/NfcSettings;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$8;->this$0:Lcom/android/settings/nfc/NfcSettings;

    const-string v1, "toggle_rw_p2p"

    # invokes: Lcom/android/settings/nfc/NfcSettings;->calculatePosY(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$1700(Lcom/android/settings/nfc/NfcSettings;Ljava/lang/String;)V

    goto :goto_0
.end method
