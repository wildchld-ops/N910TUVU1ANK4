.class Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v2, "STATUSBAR-NfcQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "STATUSBAR-NfcQuickSettingButton"

    const-string v3, "FeliCa Lock"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_0
    const-string v2, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "STATUSBAR-NfcQuickSettingButton"

    const-string v3, "FeliCa UnLock"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "STATUSBAR-NfcQuickSettingButton"

    const-string v3, "mIntentReceiver mNfcAdapter : null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    const-string v2, "STATUSBAR-NfcQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIntentReceiver nfcadapter state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    :cond_3
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto/16 :goto_0
.end method
