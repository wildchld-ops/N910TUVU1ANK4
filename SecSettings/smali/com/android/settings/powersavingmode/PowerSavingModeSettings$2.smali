.class Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "reason"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x8

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$400(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Lcom/android/settings/SwitchPreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingModeSettings$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->mUltraPowerSaving_tablet:Lcom/android/settings/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;->access$400(Lcom/android/settings/powersavingmode/PowerSavingModeSettings;)Lcom/android/settings/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
