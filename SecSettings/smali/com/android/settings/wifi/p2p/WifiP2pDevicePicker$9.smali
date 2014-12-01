.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v2, "power"

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$4100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v1, v4, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v1, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$4200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    goto :goto_0
.end method
