.class public Lcom/android/settings/motion/AirMotionTutorialSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AirMotionTutorialSettings.java"


# instance fields
.field private mAirCallAccept:Landroid/preference/Preference;

.field private mAirClip:Landroid/preference/Preference;

.field private mAirGlanceView:Landroid/preference/Preference;

.field private mAirItemMove:Landroid/preference/Preference;

.field private mAirMotionCategory:Landroid/preference/PreferenceCategory;

.field private mAirMotionScroll:Landroid/preference/Preference;

.field private mAirNoteSwap:Landroid/preference/Preference;

.field private mAirWebNavigate:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const v3, 0x7f070011

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v3, "category_air_motion"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "air_motion_glance_view"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirGlanceView:Landroid/preference/Preference;

    const-string v3, "air_motion_web_navigate"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirWebNavigate:Landroid/preference/Preference;

    const-string v3, "air_motion_note_swap"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirNoteSwap:Landroid/preference/Preference;

    const-string v3, "air_motion_scroll"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirMotionScroll:Landroid/preference/Preference;

    const-string v3, "air_motion_item_move"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirItemMove:Landroid/preference/Preference;

    const-string v3, "air_motion_clip"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirClip:Landroid/preference/Preference;

    const-string v3, "air_call_accept"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirCallAccept:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirGlanceView:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirWebNavigate:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirNoteSwap:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirMotionScroll:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirItemMove:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirClip:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/motion/AirMotionTutorialSettings;->mAirCallAccept:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method
