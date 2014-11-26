.class public final Lcom/android/settings/motion2013/AirMotionEnabler;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;
    }
.end annotation


# static fields
.field private static mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/motion2013/AirMotionEnabler;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/motion2013/AirMotionEnabler;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/motion2013/AirMotionEnabler;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0    # Lcom/android/settings/motion2013/AirMotionEnabler;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/AirMotionEnabler;)I
    .locals 1
    .param p0    # Lcom/android/settings/motion2013/AirMotionEnabler;

    iget v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    return v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0917a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/AirMotionEnabler$4;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$4;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTalkBackDisableDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09106e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09106d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/AirMotionEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$2;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/motion2013/AirMotionEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$1;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/AirMotionEnabler$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/AirMotionEnabler$3;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showTalkBackDisableDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_3

    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_6

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_motion_engine"

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/motion2013/AirMotionEnabler;->dismissAllDialog()V

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->stopObserving()V

    sput-object v1, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;-><init>(Lcom/android/settings/motion2013/AirMotionEnabler;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    sget-object v0, Lcom/android/settings/motion2013/AirMotionEnabler;->mMotionSettingObserver:Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler$MotionSettingObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1    # Landroid/preference/PreferenceActivity$Header;
    .param p2    # I

    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput p2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I

    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1    # Landroid/widget/Switch;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateSwitch()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
