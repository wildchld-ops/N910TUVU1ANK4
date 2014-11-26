.class Lcom/android/settings/safetyzone/SafetyZoneSettings$8;
.super Ljava/lang/Object;
.source "SafetyZoneSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetyzone/SafetyZoneSettings;->showSafetyZoneInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/safetyzone/SafetyZoneSettings;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;->this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

    iput-object p2, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;->val$layout:Landroid/view/View;

    const v5, 0x7f0b0195

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;->this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

    invoke-virtual {v4}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "safetyzone_settings"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "DoNotShowDialogOn"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;->this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->access$900(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_zone_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;->this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

    # invokes: Lcom/android/settings/safetyzone/SafetyZoneSettings;->showSafetyZoneEnableDialog()V
    invoke-static {v4}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->access$1000(Lcom/android/settings/safetyzone/SafetyZoneSettings;)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/safetyzone/SafetyZoneSettings$8;->this$0:Lcom/android/settings/safetyzone/SafetyZoneSettings;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/safetyzone/SafetyZoneSettings;->access$1100(Lcom/android/settings/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_zone_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
