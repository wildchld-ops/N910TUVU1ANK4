.class Lcom/android/settings/safetycare/SafetyCareDisaster$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisaster;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safetycare_geolookout_registering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safetycare_earthquake"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$2;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method
