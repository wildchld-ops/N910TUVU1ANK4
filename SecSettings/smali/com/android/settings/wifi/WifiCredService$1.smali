.class Lcom/android/settings/wifi/WifiCredService$1;
.super Landroid/os/FileObserver;
.source "WifiCredService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCredService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCredService;

.field final synthetic val$pathToWatch:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/16 v8, 0x8

    if-ne p1, v8, :cond_1

    const-string v8, "cred"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, ".conf"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ".zip"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const-string v8, "WifiCredService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File CLOSE_WRITE ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, ".conf"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/settings/wifi/WifiCredService;->readSdcard(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settings/wifi/WifiCredService;->access$000(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    # getter for: Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->access$100(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)Ljava/util/Timer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiManager;->modifyPasspointCred(Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    const-string v8, ".zip"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cred.zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v5, "/data/bundle/"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-virtual {v8}, Lcom/android/settings/wifi/WifiCredService;->installPathExists()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-virtual {v8, v7, v5}, Lcom/android/settings/wifi/WifiCredService;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-virtual {v8, v5}, Lcom/android/settings/wifi/WifiCredService;->loadCred(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    # getter for: Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->access$100(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)Ljava/util/Timer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v8, v8, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/net/wifi/WifiManager;->modifyPasspointCred(Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9, v12}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1
.end method
