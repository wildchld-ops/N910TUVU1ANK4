.class Lcom/android/settings/wifi/mobileap/WifiApSettings$14;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->warnForOpenNetwork()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->setWifiApConfigData()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$3500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    goto :goto_0
.end method
