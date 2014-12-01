.class public final Lcom/android/settings/AirCmdPreferenceEnabler;
.super Ljava/lang/Object;
.source "AirCmdPreferenceEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mPosition:I

    iput-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/AirCmdPreferenceEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirCmdPreferenceEnabler$1;-><init>(Lcom/android/settings/AirCmdPreferenceEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirCmdPreferenceEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirCmdPreferenceEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->turnOnPenInfoPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirCmdPreferenceEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09113c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirCmdPreferenceEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCmdPreferenceEnabler$3;-><init>(Lcom/android/settings/AirCmdPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirCmdPreferenceEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AirCmdPreferenceEnabler$2;-><init>(Lcom/android/settings/AirCmdPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private turnOnPenInfoPreview()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    :goto_1
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    :goto_2
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_master_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-ne v0, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_view_mode"

    sget v7, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :cond_4
    move v1, v5

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_master_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_view_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    :goto_1
    if-eqz v1, :cond_0

    sget v5, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v0, v5, :cond_0

    if-nez v3, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->showAirCommandEnabledPopup()V

    :goto_2
    return v4

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    :goto_3
    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_button_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public pause()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->dismissAllDialog()V

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/AirCmdPreferenceEnabler;->updateSwitch()V

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateSwitch()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/AirCmdPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
