.class Lcom/android/settings/wifi/FreeWifiScanSettings$13;
.super Ljava/lang/Object;
.source "FreeWifiScanSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/FreeWifiScanSettings;->connectToOpenAp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/FreeWifiScanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$13;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$13;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/FreeWifiScanSettings$13;->this$0:Lcom/android/settings/wifi/FreeWifiScanSettings;

    # getter for: Lcom/android/settings/wifi/FreeWifiScanSettings;->mcurrunt_config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$700(Lcom/android/settings/wifi/FreeWifiScanSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v2, 0x6

    # invokes: Lcom/android/settings/wifi/FreeWifiScanSettings;->findAndUpdateOpenAp(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/FreeWifiScanSettings;->access$200(Lcom/android/settings/wifi/FreeWifiScanSettings;Ljava/lang/String;I)V

    return-void
.end method
