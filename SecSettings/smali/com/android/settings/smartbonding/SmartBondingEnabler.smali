.class public final Lcom/android/settings/smartbonding/SmartBondingEnabler;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private final mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartbonding/SmartBondingEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 2

    const v0, 0x7f090836

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0914d0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x7f0914cf

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0914ce

    goto :goto_0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 2

    const v0, 0x7f0914c9

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0914cd

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const v0, 0x7f0914cc

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f0914cb

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0914ca

    goto :goto_0
.end method

.method private isMenuDIM()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportEPDG()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private showNotificationDialog()V
    .locals 14

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0914d4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0901bf

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const v13, 0x7f0901bf

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v10, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0914cd

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0914c3

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lcom/android/settings/smartbonding/SmartBondingEnabler$4;

    invoke-direct {v12, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isNoSIM()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0914c3

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0914d5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v10, 0x7f0401ae

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v10, 0x7f0b043a

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->getTextIdUnderNetworkStatus()I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(I)V

    const v10, 0x7f0b0195

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0914d6

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->getBtnIdUnderNetworkStatus()I

    move-result v10

    new-instance v11, Lcom/android/settings/smartbonding/SmartBondingEnabler$5;

    invoke-direct {v11, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$5;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v10, 0x1040000

    new-instance v11, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;

    invoke-direct {v11, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$6;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    iget-object v10, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/android/settings/smartbonding/SmartBondingEnabler$7;

    invoke-direct {v11, p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler$7;-><init>(Lcom/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isNoSIM()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    if-eqz p2, :cond_5

    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding_notification_do_not_show"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    :goto_2
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_bonding"

    if-eqz p2, :cond_6

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->unregisterForWfcAndAirPlaneStatus()V

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isNoSIM()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->registerForWfcAndAirPlaneStatus()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_bonding"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState()V

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isNoSIM()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_bonding"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    goto :goto_1
.end method

.method public updateSmartBondingState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->isMenuDIM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
