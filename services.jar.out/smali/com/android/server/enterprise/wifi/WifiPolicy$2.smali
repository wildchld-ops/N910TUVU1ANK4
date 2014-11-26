.class Lcom/android/server/enterprise/wifi/WifiPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "edm.intent.action.lock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    new-instance v11, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getTlsCertificateSecurityLevel(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    new-instance v3, Ljava/lang/Thread;

    new-instance v10, Lcom/android/server/enterprise/wifi/WifiPolicy$2$1;

    invoke-direct {v10, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V

    invoke-direct {v3, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "wifi_state"

    const/4 v11, 0x4

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v10, 0x3

    if-ne v4, v10, :cond_0

    new-instance v6, Lcom/android/server/enterprise/wifi/WifiPolicy$2$2;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V

    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "networkInfo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$100(Lcom/android/server/enterprise/wifi/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v5, Lcom/android/server/enterprise/wifi/WifiPolicy$2$3;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$2$3;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V

    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z
    invoke-static {v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$302(Z)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v10, 0x64

    if-ge v9, v10, :cond_5

    const/4 v10, 0x0

    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z
    invoke-static {v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$402(Z)Z

    :goto_1
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->activateWifiSsidRestriction(Landroid/app/enterprise/ContextInfo;Z)Z

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isKnoxMode:Z
    invoke-static {v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$402(Z)Z

    goto :goto_1
.end method
