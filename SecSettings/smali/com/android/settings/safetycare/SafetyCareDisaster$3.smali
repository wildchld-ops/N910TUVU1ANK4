.class Lcom/android/settings/safetycare/SafetyCareDisaster$3;
.super Landroid/content/BroadcastReceiver;
.source "SafetyCareDisaster.java"


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


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisaster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.geolookout.Registered"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safetycare_earthquake"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$3;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method
