.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v2, 0x4

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
