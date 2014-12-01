.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$15;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
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

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    const-string v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " discover fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v1, 0x3

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "WifiP2pDevicePicker"

    const-string v1, " discover success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$15;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v1, 0x3

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    return-void
.end method
