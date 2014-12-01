.class Lcom/android/settings/wifi/AdvancedWifiSettings$1;
.super Landroid/database/ContentObserver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    return-void
.end method
