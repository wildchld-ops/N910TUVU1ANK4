.class Lcom/android/settings/safetycare/SafetyCareDisaster$8;
.super Ljava/lang/Object;
.source "SafetyCareDisaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisaster;->displayDataChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

.field final synthetic val$dontShowAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisaster;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    iput-object p2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "data_charging_Setting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "data_charging_checkbox"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mHelpDBItem:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$300(Lcom/android/settings/safetycare/SafetyCareDisaster;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    const-string v3, "com.sec.settings.safetycare.EARTHQUAKE_CHANGED"

    # invokes: Lcom/android/settings/safetycare/SafetyCareDisaster;->sendIntent(Ljava/lang/String;ZZ)V
    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$400(Lcom/android/settings/safetycare/SafetyCareDisaster;Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$8;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
