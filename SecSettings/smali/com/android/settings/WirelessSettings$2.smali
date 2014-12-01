.class Lcom/android/settings/WirelessSettings$2;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    const-string v4, "vpn_settings"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "airplane_mode_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    # invokes: Lcom/android/settings/WirelessSettings;->updateSmartBondingState(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->access$100(Lcom/android/settings/WirelessSettings;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    # invokes: Lcom/android/settings/WirelessSettings;->isMenuDIM()Z
    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->access$000(Lcom/android/settings/WirelessSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$2;->this$0:Lcom/android/settings/WirelessSettings;

    # invokes: Lcom/android/settings/WirelessSettings;->updateSmartBondingState(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/WirelessSettings;->access$100(Lcom/android/settings/WirelessSettings;Z)V

    goto :goto_1
.end method
