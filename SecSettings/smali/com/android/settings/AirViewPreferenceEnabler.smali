.class public final Lcom/android/settings/AirViewPreferenceEnabler;
.super Ljava/lang/Object;
.source "AirViewPreferenceEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mPosition:I

.field private mSwitch:Landroid/preference/SwitchPreference;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mPosition:I

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/AirViewPreferenceEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirViewPreferenceEnabler$1;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirViewPreferenceEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AirViewPreferenceEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/AirViewPreferenceEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AirViewPreferenceEnabler;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mPosition:I

    return v0
.end method

.method private broadcastAirViewChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    const v5, 0x7f091173

    const v4, 0x7f090959

    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f091174

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090f35

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/AirViewPreferenceEnabler$3;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewPreferenceEnabler$3;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/AirViewPreferenceEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/AirViewPreferenceEnabler$2;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$4;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f09113f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f091109

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$7;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$7;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$6;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/AirViewPreferenceEnabler$8;

    invoke-direct {v1, p0}, Lcom/android/settings/AirViewPreferenceEnabler$8;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0910f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/AirViewPreferenceEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/AirViewPreferenceEnabler$5;-><init>(Lcom/android/settings/AirViewPreferenceEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->makeTalkBackDisablePopup()V

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V

    const-string v3, "AirViewPreferenceEnabler"

    const-string v4, "Air view switch is on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_4

    move v0, v2

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->showAirViewDisableDialog()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lcom/android/settings/AirViewPreferenceEnabler;->broadcastAirViewChanged(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->dismissAllDialog()V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AirViewPreferenceEnabler;->updateSwitch()V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_master_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateSwitch()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/AirViewPreferenceEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method
