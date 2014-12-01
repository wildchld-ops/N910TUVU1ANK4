.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v2, "pref_autohaptic_noti"

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$10;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mAutoHapticCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
