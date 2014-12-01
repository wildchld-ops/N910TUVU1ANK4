.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;
.super Ljava/lang/Object;
.source "CheckBluetoothStateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    iput-object p2, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$100(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    iget-object v2, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$100(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$5;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
