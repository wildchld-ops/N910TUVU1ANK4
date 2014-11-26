.class Lcom/android/settings/UsbSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsbSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    # setter for: Lcom/android/settings/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/settings/UsbSettings;->access$002(Lcom/android/settings/UsbSettings;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/settings/UsbSettings;->mUSBConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings/UsbSettings;->access$102(Lcom/android/settings/UsbSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    # getter for: Lcom/android/settings/UsbSettings;->mUSBConnected:Z
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$100(Lcom/android/settings/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    # getter for: Lcom/android/settings/UsbSettings;->mDisplayState:Z
    invoke-static {v0}, Lcom/android/settings/UsbSettings;->access$200(Lcom/android/settings/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsbSettings$2;->this$0:Lcom/android/settings/UsbSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    :cond_0
    return-void
.end method
