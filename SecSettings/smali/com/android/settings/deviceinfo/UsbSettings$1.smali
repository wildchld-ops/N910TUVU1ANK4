.class Lcom/android/settings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v4, "accessory"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsbAccessoryMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "configured"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "connected"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v3

    if-ne v3, v7, :cond_1

    if-ne v1, v7, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z
    invoke-static {v3, v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->showNotSupportMtpUsb3Dialog()V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    return-void
.end method
