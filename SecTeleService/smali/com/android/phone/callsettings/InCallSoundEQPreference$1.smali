.class Lcom/android/phone/callsettings/InCallSoundEQPreference$1;
.super Ljava/lang/Object;
.source "InCallSoundEQPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/InCallSoundEQPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080014

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    # getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    const v5, 0x7f0903e2

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(I)V

    :goto_1
    move v3, v4

    :goto_2
    return v3

    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_revision"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_diagnosis"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voicecall_eq_list_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    # getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    const/16 v5, 0x1f7

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_revision"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_direction"

    add-int/lit8 v7, v2, -0x3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_eq_list_value"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    # getter for: Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    aget-object v5, v0, v1

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
