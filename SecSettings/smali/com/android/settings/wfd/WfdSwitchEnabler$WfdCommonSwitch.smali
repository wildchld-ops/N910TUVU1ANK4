.class abstract Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "WfdCommonSwitch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdSwitchEnabler;


# virtual methods
.method public abstract isChecked()Z
.end method

.method public abstract setChecked(Z)V
.end method

.method public setEnabled(Z)Z
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$WfdCommonSwitch;->this$0:Lcom/android/settings/wfd/WfdSwitchEnabler;

    # getter for: Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->access$100(Lcom/android/settings/wfd/WfdSwitchEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const-string v1, "WfdSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitchEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
