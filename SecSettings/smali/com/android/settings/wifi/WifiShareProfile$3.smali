.class Lcom/android/settings/wifi/WifiShareProfile$3;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


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

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$1000(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$1000(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$3;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings/wifi/WifiShareProfile;->updateWifiP2pDeviceList()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$1100(Lcom/android/settings/wifi/WifiShareProfile;)V

    return-void
.end method
