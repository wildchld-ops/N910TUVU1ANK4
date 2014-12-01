.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "availableArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "activeArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v5, "erroredArray"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    goto :goto_0

    :cond_3
    const-string v5, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "info_type"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string v5, "android.intent.action.ACTION_DATA_DISABLE_TETHERING_DELAY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0
.end method
