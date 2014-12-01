.class Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
.super Landroid/database/ContentObserver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v0, "PowerUsageSummary"

    const-string v1, "onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$500(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaving_switch"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09099c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f09099d

    goto :goto_0
.end method
