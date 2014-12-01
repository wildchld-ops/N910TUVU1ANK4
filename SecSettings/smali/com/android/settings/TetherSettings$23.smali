.class Lcom/android/settings/TetherSettings$23;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$23;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/TetherSettings$23;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v0, p0, Lcom/android/settings/TetherSettings$23;->this$0:Lcom/android/settings/TetherSettings;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1, v0}, Lcom/android/settings/TetherSettings;->access$2302(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/TetherSettings$23;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$2300(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/android/settings/TetherSettings$23;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V
    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;I)V

    return-void
.end method
