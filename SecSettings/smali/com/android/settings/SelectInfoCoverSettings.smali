.class public Lcom/android/settings/SelectInfoCoverSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SelectInfoCoverSettings.java"


# instance fields
.field private mAirMessage:Landroid/preference/CheckBoxPreference;

.field private mPedometerDBKey:Ljava/lang/String;

.field private mSHealthItentExtra_type:Ljava/lang/String;

.field private mShortcutCamera:Landroid/preference/CheckBoxPreference;

.field private mShortcutCameraDBKey:Ljava/lang/String;

.field private mWalkingMate:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/CheckBoxPreference;

.field private mWeatherAgreed:Z

.field private mWeatherDBKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SelectInfoCoverSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SelectInfoCoverSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SelectInfoCoverSettings;->saveSharedPreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SelectInfoCoverSettings;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SelectInfoCoverSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private checkGuidePopupAvailable(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_1

    const-string v2, "com.android.settings.SViewCoverPopup.ShortcutCamera"

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "DoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_3

    :goto_1
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_2

    const-string v2, "com.android.settings.SViewCoverPopup.Weather"

    goto :goto_0

    :cond_2
    const-string v2, "com.android.settings.SViewCoverPopup.Pedometer"

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private clickItem(Landroid/preference/Preference;)V
    .locals 14

    const v13, 0x104000a

    const/high16 v12, 0x1040000

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v10, :cond_2

    const-string v10, "SelectItemDisplay"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceTreeClick, Camera shortcut :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v8, v9

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v10, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "shealth_pedometer_status_running"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_3

    :goto_2
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "SelectItemDisplay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceTreeClick shealth_pedometer_status_running-1 walk_mate-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": sendBroadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.shealth.COVER"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "visibility"

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.sec.android.app.shealth"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f090dd4

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090dd5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090dd6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/SelectInfoCoverSettings$1;

    invoke-direct {v8, p0}, Lcom/android/settings/SelectInfoCoverSettings$1;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v3, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/SelectInfoCoverSettings$2;

    invoke-direct {v8, p0}, Lcom/android/settings/SelectInfoCoverSettings$2;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v3, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/SelectInfoCoverSettings$3;

    invoke-direct {v8, p0}, Lcom/android/settings/SelectInfoCoverSettings$3;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "shealth_profile_initialized"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v9, "SelectInfoCoverSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick - shealth_profile_initialized:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f090d9d

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f090da1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/SelectInfoCoverSettings$4;

    invoke-direct {v8, p0}, Lcom/android/settings/SelectInfoCoverSettings$4;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/SelectInfoCoverSettings$5;

    invoke-direct {v8, p0}, Lcom/android/settings/SelectInfoCoverSettings$5;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/SelectInfoCoverSettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings/SelectInfoCoverSettings$6;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v9, "SelectItemDisplay"

    const-string v10, "onPreferenceTreeClick walk_mate(1): sendBroadcast com.sec.android.app.shealth.COVER"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.shealth.COVER"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "visibility"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_8

    :goto_3
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "SelectItemDisplay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceTreeClick walk_mate-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": sendBroadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.sec.android.app.shealth.COVER"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.sec.android.app.shealth.COVER"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "visibility"

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "type"

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_8
    move v8, v9

    goto :goto_3

    :cond_9
    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v10, :cond_17

    const-string v10, "SelectInfoCoverSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceTreeClick, CurrentLocation : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / Weather checked : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.Settings$WeatherSettingsFragmentActivity"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v8, "sview"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/settings/SelectInfoCoverSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_a
    const-string v9, "sview"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_c

    move v10, v8

    :goto_5
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_e

    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "START"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_6
    const-string v10, "PACKAGE"

    const-string v11, "com.sec.android.sviewcover"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "CP"

    const-string v11, "Kweather"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_show_info"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_13

    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v9, "START"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_8
    const-string v8, "PACKAGE"

    const-string v9, "com.android.keyguard"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "CP"

    const-string v9, "Kweather"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_c
    move v10, v9

    goto :goto_5

    :cond_d
    const-string v10, "START"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_10

    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_f

    const-string v10, "START"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_9
    const-string v10, "PACKAGE"

    const-string v11, "com.sec.android.sviewcover"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "CP"

    const-string v11, "Cmaweather"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7

    :cond_f
    const-string v10, "START"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    :cond_10
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_11

    const-string v10, "START"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_a
    const-string v10, "PACKAGE"

    const-string v11, "com.sec.android.sviewcover"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "CP"

    const-string v11, "Accuweather"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_7

    :cond_11
    const-string v10, "START"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_a

    :cond_12
    const-string v8, "START"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_15

    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_14

    const-string v9, "START"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_b
    const-string v8, "PACKAGE"

    const-string v9, "com.android.keyguard"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "CP"

    const-string v9, "Cmaweather"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_14
    const-string v8, "START"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b

    :cond_15
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_16

    const-string v9, "START"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_c
    const-string v8, "PACKAGE"

    const-string v9, "com.android.keyguard"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "CP"

    const-string v9, "Accuweather"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_16
    const-string v8, "START"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_c

    :cond_17
    iget-object v10, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    if-ne p1, v10, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_message"

    iget-object v12, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_18

    :goto_d
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_18
    move v8, v9

    goto :goto_d
.end method

.method public static getUseLocationAgreed(Landroid/content/Context;)I
    .locals 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p0, :cond_0

    move v9, v8

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "SHOW_USE_LOCATION_POPUP"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private saveSharedPreferences(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showGuidePopup(Landroid/preference/Preference;)V
    .locals 12

    const v11, 0x7f090d9c

    const v8, 0x7f090d9b

    const v10, 0x104000a

    const/high16 v9, 0x1040000

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_1

    const v7, 0x7f0913bf

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f040081

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0b0197

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0b0198

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_5

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$7;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$8;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$8;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$9;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$9;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_3

    const v7, 0x7f090d97

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const v7, 0x7f090d9d

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v11}, Lcom/android/settings/SelectInfoCoverSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_6

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$10;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$10;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$11;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$11;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$12;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$12;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_6
    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$13;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$13;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v9, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$14;

    invoke-direct {v7, p0}, Lcom/android/settings/SelectInfoCoverSettings$14;-><init>(Lcom/android/settings/SelectInfoCoverSettings;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/settings/SelectInfoCoverSettings$15;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/SelectInfoCoverSettings$15;-><init>(Lcom/android/settings/SelectInfoCoverSettings;Landroid/view/View;)V

    invoke-virtual {v0, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v6, 0x1

    const/4 v12, 0x6

    const/4 v8, 0x0

    const/4 v11, -0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f0700db

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "shortcut_camera"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    const-string v7, "weather"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    const-string v7, "scover_airmessage"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    const-string v7, "walking_mate"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "set_shortcuts_mode"

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    const-string v7, "lock_additional_weather"

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    const-string v7, "lock_additional_steps"

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    const-string v7, "WALKMATE_TMR"

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v12, :cond_0

    const-string v7, "shortcut_camera"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.android.app.shealth"

    const/4 v10, 0x5

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    if-eq v1, v11, :cond_1

    if-eq v0, v12, :cond_1

    const-string v7, "weather"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "com.sec.android.app.shealth.CHECK_INIT"

    invoke-static {v7, v9}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eq v1, v11, :cond_3

    if-eq v0, v12, :cond_3

    :cond_2
    const-string v7, "walking_mate"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "scover_airmessage"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mOpenDetailMenu:Z

    if-eqz v7, :cond_5

    sget v7, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-eq v7, v11, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v7, "extra_parent_preference_key"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v7, v6, :cond_7

    :goto_2
    const-string v7, "weather"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    return-void

    :cond_6
    const-string v7, "shortcut_camera"

    invoke-virtual {p0, v7}, Lcom/android/settings/SelectInfoCoverSettings;->removePreference(Ljava/lang/String;)V

    const-string v7, "weather_cover"

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    const-string v7, "walk_mate"

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    const-string v7, "WALKMATE"

    iput-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mSHealthItentExtra_type:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    move v6, v8

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget v2, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v2, v1, :cond_1

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_1
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->checkGuidePopupAvailable(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->showGuidePopup(Landroid/preference/Preference;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/SelectInfoCoverSettings;->clickItem(Landroid/preference/Preference;)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->updateState()V

    return-void
.end method

.method public updateState()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mShortcutCameraDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SelectInfoCoverSettings;->mPedometerDBKey:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mAirMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_message"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SelectInfoCoverSettings;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeatherAgreed:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4
.end method
