.class Lcom/android/settings/safetycare/SafetyCareDisaster$5;
.super Ljava/lang/Object;
.source "SafetyCareDisaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$5;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_care_disaster_user_agree"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$5;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$200(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safety_care_user_agree"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$5;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$5;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
