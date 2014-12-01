.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    const v2, 0x7f09099c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    const v2, 0x7f09099d

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method
