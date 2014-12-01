.class Lcom/android/settings/nfc/AndroidBeam$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBeam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/AndroidBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/AndroidBeam;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    # getter for: Lcom/android/settings/nfc/AndroidBeam;->DBG:Z
    invoke-static {}, Lcom/android/settings/nfc/AndroidBeam;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AndroidBeam"

    const-string v2, "ABeam finish"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    # getter for: Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/nfc/AndroidBeam;->access$100(Lcom/android/settings/nfc/AndroidBeam;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AndroidBeam"

    const-string v2, "SBeam : FeliCa is Lock. FINISH!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const-string v1, "com.samsung.felica.action.NFCTYPE_STATUS_BF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AndroidBeam"

    const-string v2, "SBeam : NFC Type Status is BF. FINISH!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam$1;->this$0:Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
