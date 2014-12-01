.class Lcom/android/settings/SoundSettings$10;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoundSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # invokes: Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1300(Lcom/android/settings/SoundSettings;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vibrate"

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # invokes: Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1300(Lcom/android/settings/SoundSettings;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mute"

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1400(Lcom/android/settings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1000(Lcom/android/settings/SoundSettings;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1500(Lcom/android/settings/SoundSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1500(Lcom/android/settings/SoundSettings;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mSoundMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/settings/SoundSettings;->access$1500(Lcom/android/settings/SoundSettings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings$10;->this$0:Lcom/android/settings/SoundSettings;

    # getter for: Lcom/android/settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/SoundSettings;->access$1400(Lcom/android/settings/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
