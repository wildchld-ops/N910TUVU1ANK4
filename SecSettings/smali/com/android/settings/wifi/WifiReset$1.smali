.class Lcom/android/settings/wifi/WifiReset$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiReset;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiReset;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiReset$1;->this$0:Lcom/android/settings/wifi/WifiReset;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiReset$1;->this$0:Lcom/android/settings/wifi/WifiReset;

    # getter for: Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiReset;->access$100(Lcom/android/settings/wifi/WifiReset;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset$1;->this$0:Lcom/android/settings/wifi/WifiReset;

    # getter for: Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiReset;->access$000(Lcom/android/settings/wifi/WifiReset;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiReset$1;->this$0:Lcom/android/settings/wifi/WifiReset;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiReset;->reset()V

    :cond_0
    return-void
.end method
