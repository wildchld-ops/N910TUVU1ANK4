.class public Lcom/android/settings/BlockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlockSettings.java"


# static fields
.field private static mIsCallSeparate:Z


# instance fields
.field private mCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mListIndex:I

.field private mMessageBlockMode:Landroid/preference/PreferenceScreen;

.field private mRejectModeDlgId:I

.field private mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

.field private mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BlockSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/BlockSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BlockSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setBlockMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BlockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    return-void
.end method

.method private getCallBlockMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIndexFromValue(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    goto :goto_0
.end method

.method private getMessageBlockMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "messageblock_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getModeDialogId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    return v0
.end method

.method private getVideoBlockMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoreject_videocall_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private makeCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09132c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$2;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00c4

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$1;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private makeMessageBlockDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f091336

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$8;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00c7

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$7;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private makeVideoCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f091333

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$6;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00c6

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$5;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private makeVoiceCallBlockDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->getIndexFromValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->setModeDialogId(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f091330

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/BlockSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/BlockSettings$4;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00c5

    iget v3, p0, Lcom/android/settings/BlockSettings;->mListIndex:I

    new-instance v4, Lcom/android/settings/BlockSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/BlockSettings$3;-><init>(Lcom/android/settings/BlockSettings;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private setBlockMode(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getModeDialogId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_videocall_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "messageblock_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setModeDialogId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/BlockSettings;->mRejectModeDlgId:I

    return-void
.end method

.method private updateSummary()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_4

    const v1, 0x7f09133b

    :goto_0
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getCallBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_6

    const v1, 0x7f09133c

    :goto_1
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getVideoBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_8

    const v1, 0x7f09133d

    :goto_2
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->getMessageBlockMode()I

    move-result v0

    if-ne v0, v3, :cond_a

    const v1, 0x7f09133f

    :goto_3
    iget-object v2, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_3
    return-void

    :cond_4
    if-ne v0, v4, :cond_5

    const v1, 0x7f09133e

    goto :goto_0

    :cond_5
    const v1, 0x7f091341

    goto :goto_0

    :cond_6
    if-ne v0, v4, :cond_7

    const v1, 0x7f09133e

    goto :goto_1

    :cond_7
    const v1, 0x7f091341

    goto :goto_1

    :cond_8
    if-ne v0, v4, :cond_9

    const v1, 0x7f09133e

    goto :goto_2

    :cond_9
    const v1, 0x7f091341

    goto :goto_2

    :cond_a
    if-ne v0, v4, :cond_b

    const v1, 0x7f091340

    goto :goto_3

    :cond_b
    const v1, 0x7f091341

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "call_block"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "voice_call_block"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "video_call_block"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v0, "messageblock_mode_preference"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVTCallCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    :goto_1
    sget-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "call_block"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "voice_callblock_mode_preference"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    const-string v0, "video_callblock_mode_preference"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/BlockSettings;->mIsCallSeparate:Z

    goto :goto_1

    :cond_2
    const-string v0, "callblock_mode_preference"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "voice_call_block"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "video_call_block"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVoiceCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeVideoCallBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/BlockSettings;->makeMessageBlockDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVoiceCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mVideoCallBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/BlockSettings;->mMessageBlockMode:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/BlockSettings;->updateSummary()V

    return-void
.end method
