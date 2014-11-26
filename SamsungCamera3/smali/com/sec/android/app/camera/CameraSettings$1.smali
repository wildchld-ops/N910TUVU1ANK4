.class Lcom/sec/android/app/camera/CameraSettings$1;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraSettings;->requestGroupInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings$1;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 7
    .param p1    # Landroid/net/wifi/p2p/WifiP2pGroup;

    if-nez p1, :cond_1

    const-string v4, "CameraSettings"

    const-string v5, "arg0 is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CameraSettings"

    const-string v5, "arg0 is group owner"

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v4, "CameraSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "devList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings$1;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/Camera;->setWifiP2pDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    :cond_2
    const-string v4, "CameraSettings"

    const-string v5, "arg0 is client"

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSettings$1;->this$0:Lcom/sec/android/app/camera/CameraSettings;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/Camera;->setWifiP2pDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0
.end method
