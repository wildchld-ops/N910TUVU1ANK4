.class Lcom/android/settings/safetycare/SafetyCareSettings$3;
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

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$3;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$3;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$400(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$3;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safetycare_earthquake"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/safetycare/SafetyCareSettings$3;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # getter for: Lcom/android/settings/safetycare/SafetyCareSettings;->mDisaster:Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$400(Lcom/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-ne v0, v1, :cond_2

    const v1, 0x7f091a44

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f091a45

    goto :goto_0
.end method
