.class Lcom/android/settings/wifi/WifiShareProfile$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-nez v1, :cond_3

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION - WIFI P2P networkInfo is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$500(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiShareProfile;->access$300(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$400(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_5

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION - Connected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiShareProfile;->access$202(Lcom/android/settings/wifi/WifiShareProfile;Z)Z

    goto :goto_0

    :cond_5
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "WifiShareProfile"

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION - Disconnected."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/wifi/WifiShareProfile;->wifiP2pConnected:Z
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiShareProfile;->access$202(Lcom/android/settings/wifi/WifiShareProfile;Z)Z

    goto :goto_0

    :cond_7
    const-string v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    const-string v2, "wifiP2pDevice"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3, v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$602(Lcom/android/settings/wifi/WifiShareProfile;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_P2P_THIS_DEVICE_CHANGED_ACTION, ThisDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$600(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$100()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "WifiShareProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_STATE_CHANGED_ACTION, WifiEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z
    invoke-static {v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$800(Lcom/android/settings/wifi/WifiShareProfile;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$900(Lcom/android/settings/wifi/WifiShareProfile;)V

    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    # setter for: Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiShareProfile;->access$802(Lcom/android/settings/wifi/WifiShareProfile;Z)Z

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->wifiIsEnabled:Z
    invoke-static {v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$800(Lcom/android/settings/wifi/WifiShareProfile;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings/wifi/WifiShareProfile;->initPreferences()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiShareProfile;->access$900(Lcom/android/settings/wifi/WifiShareProfile;)V

    goto :goto_2
.end method
