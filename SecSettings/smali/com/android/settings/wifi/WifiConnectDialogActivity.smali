.class public final Lcom/android/settings/wifi/WifiConnectDialogActivity;
.super Landroid/app/Activity;
.source "WifiConnectDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/wifi/WifiConnectDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConnectDialogActivity$1;-><init>(Lcom/android/settings/wifi/WifiConnectDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v0, Lcom/android/settings/wifi/WifiConnectDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConnectDialogActivity$2;-><init>(Lcom/android/settings/wifi/WifiConnectDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v4, 0x0

    const-string v0, "android.net.wifi.WIFI_CONNECT_DIALOG"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.oem.smartwifisupport.result"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    if-eqz v8, :cond_0

    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v8}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v4, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.net.wifi.WIFI_MODIFY_DIALOG"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oem.smartwifisupport.config"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_0

    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v6}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectDialogActivity;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectDialogActivity;->finish()V

    return-void
.end method
