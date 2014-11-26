.class Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;
.super Ljava/lang/Object;
.source "PowerSavingMode2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$800(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_powersaving_mode"

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingMode2014$6;->this$0:Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingMode2014;->mDataPowerSavingCheck:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/PowerSavingMode2014;->access$600(Lcom/android/settings/powersavingmode/PowerSavingMode2014;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
