.class public final Lcom/android/settings/motion2013/PalmMotionEnabler;
.super Ljava/lang/Object;
.source "PalmMotionEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mPalmMotionObserver:Landroid/database/ContentObserver;

.field private mPosition:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/motion2013/PalmMotionEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/PalmMotionEnabler$1;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/PalmMotionEnabler;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/PalmMotionEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->showAllOptionDisabledDialog()V

    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/PalmMotionEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/PalmMotionEnabler$3;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/PalmMotionEnabler$4;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/PalmMotionEnabler$4;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090fad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2013/PalmMotionEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/PalmMotionEnabler$2;-><init>(Lcom/android/settings/motion2013/PalmMotionEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->makeTalkBackDisablePopup()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentPalmMotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->showAllOptionDisabledDialog()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->dismissAllDialog()V

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPalmMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput p2, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mPosition:I

    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
