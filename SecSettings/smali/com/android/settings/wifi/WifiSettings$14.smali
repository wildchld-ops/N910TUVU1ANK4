.class Lcom/android/settings/wifi/WifiSettings$14;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    # getter for: Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->access$800()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "user continue connnecting AP with EAP-TLS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->access$800()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    # invokes: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->access$1000(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    const/4 v0, 0x0

    # setter for: Lcom/android/settings/wifi/WifiSettings;->tempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$802(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiSettings"

    const-string v1, "WIFI_WARNING_CA_CERT_DIALOG_ID config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
