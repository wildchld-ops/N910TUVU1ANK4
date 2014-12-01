.class Lcom/android/settings/bluetooth/BluetoothErrorActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothErrorActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothErrorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/high16 v4, -0x80000000

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothErrorActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_0
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothErrorActivity$1;->this$0:Lcom/android/settings/bluetooth/BluetoothErrorActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_1
    return-void
.end method
