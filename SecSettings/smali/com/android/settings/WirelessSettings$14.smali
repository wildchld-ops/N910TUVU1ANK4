.class Lcom/android/settings/WirelessSettings$14;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WirelessSettings$14;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$14;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f09099c

    :goto_0
    iget-object v1, p0, Lcom/android/settings/WirelessSettings$14;->this$0:Lcom/android/settings/WirelessSettings;

    # getter for: Lcom/android/settings/WirelessSettings;->mSmartBonding:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->access$700(Lcom/android/settings/WirelessSettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    const v0, 0x7f09099d

    goto :goto_0
.end method
