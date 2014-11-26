.class Lcom/android/settings/bluetooth/DevicePickerActivity$6;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    # setter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$202(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->ScanBtnStateUpdate(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    # getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$200(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$6$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$6$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->ScanBtnStateUpdate(Z)V

    goto :goto_0
.end method
