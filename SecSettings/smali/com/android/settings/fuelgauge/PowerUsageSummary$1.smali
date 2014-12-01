.class Lcom/android/settings/fuelgauge/PowerUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a2e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->clearStats()V

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    invoke-static {p2}, Lcom/android/settings/Utils;->isCharger(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
