.class Lcom/android/settings/wifi/AdvancedWifiSettings$8;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/16 v6, 0x2d

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    check-cast p1, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiInternetServiceCheckDialog;->WifiInternetServiceCheckBoxChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_internet_service_check_warning"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1200(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1300(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enable"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AdvancedWifiSettings"

    const-string v3, "HOTSPOT20 config store error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1500(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1300(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1300(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enable"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$8;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$1400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AdvancedWifiSettings"

    const-string v3, "HOTSPOT20 config store error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
