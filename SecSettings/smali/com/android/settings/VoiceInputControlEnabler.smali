.class public final Lcom/android/settings/VoiceInputControlEnabler;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;
    }
.end annotation


# static fields
.field private static mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;


# instance fields
.field private final KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field protected MESSAGE_DELAY:I

.field private final VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

.field private final VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field protected mVoiceControlUncheckerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    const-string v0, "temp_voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->KEY_TEMP_VOICE_INPUT_CONTROL:Ljava/lang/String;

    const-string v0, "voice_input_control_incomming_calls"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_INCOMMING_CALL:Ljava/lang/String;

    const-string v0, "voice_input_control_chatonv"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CHATONV:Ljava/lang/String;

    const-string v0, "voice_input_control_alarm"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_ALARM:Ljava/lang/String;

    const-string v0, "voice_input_control_camera"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_CAMERA:Ljava/lang/String;

    const-string v0, "voice_input_control_music"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->VOICEINPUTCONTROL_MUSIC:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    iput v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    iput-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlEnabler$6;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/VoiceInputControlEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/VoiceInputControlEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/VoiceInputControlEnabler;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    return v0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0917a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0913c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/VoiceInputControlEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/VoiceInputControlEnabler$7;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public disableAlarmAndMusicVoiceControl()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_alarm"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_music"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public hasDialing()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v8, "voice_input_control_alarm"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v8, "voice_input_control_camera"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v8, "voice_input_control_music"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "voice_input_control_chatonv"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    const-string v8, "voice_input_control"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getInstance()Lcom/android/settings/VoiceInputControlSettings;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v8, v11}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v8, v11}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->hasDialing()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    if-eqz p2, :cond_9

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "VoiceInputControlEnabler"

    const-string v9, "VoiceControl changed ignored cause all sub options are disabled "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlEnabler;->showAllOptionDisabledDialog()V

    :cond_6
    :goto_1
    if-eqz p2, :cond_b

    if-nez v7, :cond_b

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/settings/VoiceInputControlSettings;->isFromHelpApp()Z

    move-result v8

    if-eqz v8, :cond_7

    if-ne v4, v12, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v6}, Lcom/android/settings/VoiceInputControlSettings;->getHelpHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->disableAlarmAndMusicVoiceControl()V

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceControlUncheckerHandler:Landroid/os/Handler;

    iget v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->MESSAGE_DELAY:I

    int-to-long v9, v9

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_6

    if-nez v7, :cond_6

    if-nez v4, :cond_6

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v8, 0x7f040066

    invoke-virtual {v1, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v8, 0x7f0b0141

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v8, 0x7f0b0140

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    const v9, 0x7f0913c9

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$1;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$1;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0913c8

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0913cb

    new-instance v10, Lcom/android/settings/VoiceInputControlEnabler$3;

    invoke-direct {v10, p0, v0, v6}, Lcom/android/settings/VoiceInputControlEnabler$3;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/widget/CheckBox;Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0913cc

    new-instance v10, Lcom/android/settings/VoiceInputControlEnabler$2;

    invoke-direct {v10, p0}, Lcom/android/settings/VoiceInputControlEnabler$2;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$4;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$4;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v8, Lcom/android/settings/VoiceInputControlEnabler$5;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlEnabler$5;-><init>(Lcom/android/settings/VoiceInputControlEnabler;)V

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1

    :cond_a
    const v9, 0x7f0913ca

    goto :goto_2

    :cond_b
    if-nez p2, :cond_1

    if-ne v7, v12, :cond_1

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->stopObserving()V

    sput-object v4, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public resume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v4}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v4}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlEnabler;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getInstance()Lcom/android/settings/VoiceInputControlSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->isFromHelpApp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlSettings;->getHelpHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v2, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;-><init>(Lcom/android/settings/VoiceInputControlEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    sget-object v2, Lcom/android/settings/VoiceInputControlEnabler;->mVoiceInputSettingObserver:Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;

    invoke-virtual {v2}, Lcom/android/settings/VoiceInputControlEnabler$VoiceInputSettingObserver;->startObserving()V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput p2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mPosition:I

    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(true)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    const-string v2, "VoiceInputControlEnabler"

    const-string v3, "updateSwitch - mSwitch.setChecked(false)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSwitch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
