.class Lcom/android/settings/nfc/SBeam$4;
.super Landroid/content/BroadcastReceiver;
.source "SBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/SBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/SBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/SBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/SBeam$4;->this$0:Lcom/android/settings/nfc/SBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[SBeam]"

    const-string v2, "SBeam finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam$4;->this$0:Lcom/android/settings/nfc/SBeam;

    # getter for: Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/SBeam$4;->this$0:Lcom/android/settings/nfc/SBeam;

    # getter for: Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const-string v1, "[SBeam]"

    const-string v2, "SBeam : NFC is off. FINISH!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/16 v2, 0xb

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam$4;->this$0:Lcom/android/settings/nfc/SBeam;

    # getter for: Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const-string v1, "[SBeam]"

    const-string v2, "SBeam : NFC is off. FINISH!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "[SBeam]"

    const-string v2, "SBeam : FeliCa is Lock. FINISH!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam$4;->this$0:Lcom/android/settings/nfc/SBeam;

    # getter for: Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const-string v1, "com.samsung.felica.action.NFCTYPE_STATUS_BF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[SBeam]"

    const-string v2, "SBeam : NFC Type Status is BF. FINISH!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam$4;->this$0:Lcom/android/settings/nfc/SBeam;

    # getter for: Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/SBeam;->access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
