.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_autohaptic_noti"

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->val$mcheck_autohaptic:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_tactileassist_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    const-string v2, "tactileassist"

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TactileAssist;

    # setter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1202(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/os/TactileAssist;)Landroid/os/TactileAssist;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/TactileAssist;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$12;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->mTactileAssist:Landroid/os/TactileAssist;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/os/TactileAssist;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/TactileAssist;->setEnable(Z)Z

    :cond_0
    const-string v0, "AccessibilitySettings_Hearing"

    const-string v1, "mTactileAssist : enable - 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
