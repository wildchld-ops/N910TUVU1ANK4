.class Lcom/android/settings/smartbonding/SmartBondingSettings$7;
.super Landroid/database/ContentObserver;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1200(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mUnclickPref:Lcom/android/settings/UnclickablePreference;
    invoke-static {v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1300(Lcom/android/settings/smartbonding/SmartBondingSettings;)Lcom/android/settings/UnclickablePreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->isNoSIM()Z
    invoke-static {v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1400(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mSmartBondingPopupPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1600(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1500(Lcom/android/settings/smartbonding/SmartBondingSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->isMenuDIM()Z
    invoke-static {v2}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$7;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->updateSmartBondingState(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$1100(Lcom/android/settings/smartbonding/SmartBondingSettings;Z)V

    goto :goto_1
.end method
