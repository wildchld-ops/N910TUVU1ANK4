.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$13;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigListAvailable(Landroid/net/wifi/p2p/WifiP2pConfigList;)V
    .locals 1

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$5000()Landroid/net/wifi/p2p/WifiP2pConfigList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->clear()Z

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$5002(Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-void
.end method

.method public onConfigListUnavailable()V
    .locals 1

    const/4 v0, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1002(Z)Z

    return-void
.end method
