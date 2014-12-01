.class public Lcom/android/settings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"


# static fields
.field static block_HelpStep2:Z


# instance fields
.field private bHelpMode:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mExplainImageView:Landroid/widget/ImageView;

.field private mExplainTextView:Landroid/widget/TextView;

.field private mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    new-instance v0, Lcom/android/settings/nfc/SBeam$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/SBeam$4;-><init>(Lcom/android/settings/nfc/SBeam;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/SBeam;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/nfc/SBeam;->createHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/SBeam;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/nfc/SBeam;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method private createHelpStep2Dialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_0
    sget-boolean v2, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    const-string v2, "[SBeam]"

    const-string v3, "createHelpStep2Dialog() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400fd

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/nfc/SBeam$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/SBeam$3;-><init>(Lcom/android/settings/nfc/SBeam;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method private getActionBarView()Landroid/view/View;
    .locals 7

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_container"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public isHelp()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    move v3, v5

    :goto_1
    if-nez v3, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.helphub"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v7, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    instance-of v5, v5, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    check-cast v4, Landroid/preference/PreferenceActivity;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "[SBeam]"

    const-string v6, "SBeam : Set Switch padding 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9, v9, v3, v9}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const v8, 0x800015

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    const v6, 0x7f09033a

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    iget-boolean v5, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    new-instance v6, Lcom/android/settings/nfc/SBeam$1;

    invoke-direct {v6, p0}, Lcom/android/settings/nfc/SBeam$1;-><init>(Lcom/android/settings/nfc/SBeam;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/android/settings/nfc/SBeam$2;

    invoke-direct {v5, p0}, Lcom/android/settings/nfc/SBeam$2;-><init>(Lcom/android/settings/nfc/SBeam;)V

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_4
    new-instance v5, Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    iget-object v8, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v5, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.felica.action.NFCTYPE_STATUS_BF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f090d2d

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02016d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f04020b

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0501

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-boolean v4, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    :goto_0
    if-eqz p3, :cond_0

    const-string v4, "FOCUS"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "IMG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeam;->getActionBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    const-string v4, "TEXT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    const-string v4, "SWITCH"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_1
    sget-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[SBeam]"

    const-string v1, "onDestroy called!!finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v4, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsItemSelected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.samsung.helpplugin"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "default"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsItemSelected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:section"

    const-string v5, "nfc"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "helphub:appid"

    const-string v5, "nfc"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "helphub:screenid"

    const-string v5, "nfc_sub_sbeam"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FOCUS"

    const-string v1, "IMG"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FOCUS"

    const-string v1, "TEXT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FOCUS"

    const-string v1, "SWITCH"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
