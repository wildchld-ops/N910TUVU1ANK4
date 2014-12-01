.class public Lcom/android/settings/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mExplainImageView:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/AndroidBeam$1;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/AndroidBeam;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/AndroidBeam;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/AndroidBeam;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private getActionBarView()Landroid/view/View;
    .locals 7

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

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

.method private initView(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b0077

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090311

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v2, 0x7f0b0078

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_beam_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p2}, Landroid/widget/Switch;->setChecked(Z)V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0917e9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0917eb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/nfc/AndroidBeam$2;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AndroidBeam$2;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/nfc/AndroidBeam$3;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/AndroidBeam$3;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/nfc/AndroidBeam$4;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/AndroidBeam$4;-><init>(Lcom/android/settings/nfc/AndroidBeam;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f09030b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.felica.action.NFCTYPE_STATUS_BF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/AndroidBeam;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/nfc/AndroidBeam;->getActionBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-boolean v2, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "AndroidBeam"

    const-string v3, "ABeam onResume & registerReceiver"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isAndroidBeamAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/nfc/OsaifuConfigAccess;->getNfcTypeSettings()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AndroidBeam"

    const-string v3, "Android Beam : NFC Type Status is BF."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-boolean v1, Lcom/android/settings/nfc/AndroidBeam;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "AndroidBeam"

    const-string v2, "ABeam onStop & unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeam;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AndroidBeam"

    const-string v2, "no BroadcastReceiver to be unregistered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
