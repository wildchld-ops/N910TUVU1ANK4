.class Landroid/os/OEMEncryption$3;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.action.3LM_NFC_FRCRESET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, -0x1

    const-string v2, "OEMEncryption"

    const-string/jumbo v3, "nfc state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "lockstate"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "OEMEncryption"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v5, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->m_dem_3lm:Landroid/os/IDeviceManager3LM;
    invoke-static {v2}, Landroid/os/OEMEncryption;->access$600(Landroid/os/OEMEncryption;)Landroid/os/IDeviceManager3LM;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "OEMEncryption"

    const-string v3, "Exception caught in 3LM service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "OEMEncryption"

    const-string v3, "Dismissing the notification beacuse SD card is encrypted now."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/os/OEMEncryption$3;->this$0:Landroid/os/OEMEncryption;

    # getter for: Landroid/os/OEMEncryption;->handler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/os/OEMEncryption;->access$400(Landroid/os/OEMEncryption;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
