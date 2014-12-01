.class Lcom/android/settings/powersavingmode/PowerSavingModeData$1;
.super Landroid/database/ContentObserver;
.source "PowerSavingModeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeData;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "PowerSavingMode2014"

    const-string v4, "onChange() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$100(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_powersaving_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeData;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeData;->mDataPowerSaving:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$300(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeData;->data_app:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$400(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeData$1;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeData;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeData;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeData;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeData;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method
