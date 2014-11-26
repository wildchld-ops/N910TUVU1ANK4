.class Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "AllShareCastQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    const-string v1, "STATUSBAR-AllShareCastQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi display status changed! scanstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ActiveDisplayState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AllShareCastQuickSettingButton;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :cond_0
    return-void
.end method
