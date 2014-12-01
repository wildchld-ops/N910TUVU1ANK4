.class Lcom/android/settings/bluetooth/BluetoothScanDialog$2$1;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothScanDialog$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/BluetoothScanDialog$2;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothScanDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$2$1;->this$1:Lcom/android/settings/bluetooth/BluetoothScanDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    # getter for: Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->access$100()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0
.end method
