.class Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "STATUSBAR-BluetoothQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void
.end method
