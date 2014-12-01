.class Lcom/android/settings/wifi/AdvancedWifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "launch_with"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v9, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_3
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    # setter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mIsConn:Z
    invoke-static {v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$102(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$200(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto :goto_0

    :cond_6
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string v8, "wifi_hotspot20_enable"

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, v7, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    if-ne v3, v9, :cond_7

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    if-ne v3, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v4, v4, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    const-string v4, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "AdvancedWifiSettings"

    const-string v5, "HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V
    invoke-static {v4, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$300(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/ConnectivityManager;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$400(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v4

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mMobilePolicyDataEnable:Z
    invoke-static {v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$500(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v7

    if-eq v4, v7, :cond_c

    :cond_b
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    :cond_c
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->updateScanAlwaysAvailableCheck()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$600(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_f

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$700(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_e
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$700(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$800(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wifi_scan_always_enabled"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_10

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_f
    if-ne v3, v5, :cond_e

    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->scanAlwaysAvailable:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$700(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_10
    move v4, v6

    goto :goto_2
.end method
