.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;
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

.field final synthetic val$mcheck_flash:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->val$mcheck_flash:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v4, "pref_flash_noti"

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->val$mcheck_flash:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$300(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_merged_mute_pause"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$400(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_overturn"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->access$500(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flash_notification"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isFontsizeForT()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_flashwidget_noti"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.sec.flashwidget"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "appsName"

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09126c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "packageName"

    const-string v4, "com.sec.flashwidget"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.accessibility.AccessibilityWidgetDialogActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v3, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
