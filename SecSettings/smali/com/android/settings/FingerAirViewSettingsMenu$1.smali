.class Lcom/android/settings/FingerAirViewSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "FingerAirViewSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FingerAirViewSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/FingerAirViewSettingsMenu$1;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu$1;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu$1;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # getter for: Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$000(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu$1;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # getter for: Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$100(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
