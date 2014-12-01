.class Lcom/android/settings/deviceinfo/UsbSettings$6;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->showMtpUsb3Dialog()V
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

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z
    invoke-static {v0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$6;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "mtp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    return-void
.end method
