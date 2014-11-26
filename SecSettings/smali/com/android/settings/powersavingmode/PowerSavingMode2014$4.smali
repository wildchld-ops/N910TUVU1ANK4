.class Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;
.super Ljava/lang/Object;
.source "PowerSavingMode2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/PowerSavingMode2014;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$600(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$4;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$500(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_powersaving_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
