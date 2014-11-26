.class Lcom/android/settings/safetycare/SafetyCareSettings$2;
.super Landroid/database/ContentObserver;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$300(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "send_emergency_message"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "block_emergency_message"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$300(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$300(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const v3, 0x7f091a61

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->mAssistance:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$300(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-ne v1, v2, :cond_4

    const v2, 0x7f091a44

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_4
    const v2, 0x7f091a45

    goto :goto_3
.end method
