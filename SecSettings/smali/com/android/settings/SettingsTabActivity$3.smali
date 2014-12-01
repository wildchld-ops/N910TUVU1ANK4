.class Lcom/android/settings/SettingsTabActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$3;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$800()I

    move-result v2

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    # setter for: Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I
    invoke-static {v5}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    :cond_0
    :goto_0
    # getter for: Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$800()I

    move-result v5

    if-eq v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity$3;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity$3;->this$0:Lcom/android/settings/SettingsTabActivity;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    # setter for: Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I
    invoke-static {v7}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0

    :cond_3
    # setter for: Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I
    invoke-static {v8}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0

    :cond_4
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_5

    if-nez v3, :cond_6

    :cond_5
    # setter for: Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I
    invoke-static {v8}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0

    :cond_6
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    # setter for: Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I
    invoke-static {v7}, Lcom/android/settings/SettingsTabActivity;->access$802(I)I

    goto :goto_0
.end method
