.class public Lcom/android/settings/search/SearchFilterMenu;
.super Ljava/lang/Object;
.source "SearchFilterMenu.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/settings/search/SearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_clock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_myprofile_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "owner_info_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "quick_note"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :sswitch_0
    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_e

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "sim_lock_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "sim_toggle"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "sim_pin"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_2
    sget-object v3, Lcom/android/settings/search/SearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "sip_feedback_sound"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "sip_feedback_vibration"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "RemoteControls"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "SIMAlert"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "GoToSamsungDive"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "software_update_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "update"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "auto_update"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "wifi_only"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "ink_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_wakeup_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screenswitch"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "clock_weather"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "lock_screen_widget_options"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "safetyzone_settings"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "multiple_lock_screen"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "lock_after_timeout"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_c

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    :cond_c
    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "lock_screen_shortcut_menu"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "unlock_effect"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "help_text"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "say_your_wakeup"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "set_wakeup_command"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_improve_matching"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    const-string v3, "signature_verification_level"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "visiblepattern"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "unlock_set_smart"

    invoke-direct {p0, v3}, Lcom/android/settings/search/SearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_5
        0x50000 -> :sswitch_5
        0x60000 -> :sswitch_5
        0x61000 -> :sswitch_3
        0x90000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
    .end sparse-switch
.end method
