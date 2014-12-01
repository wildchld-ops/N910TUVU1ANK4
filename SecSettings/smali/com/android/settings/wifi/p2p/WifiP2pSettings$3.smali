.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x4

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto :goto_0
.end method
