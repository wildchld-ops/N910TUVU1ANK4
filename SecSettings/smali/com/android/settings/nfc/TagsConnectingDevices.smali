.class public Lcom/android/settings/nfc/TagsConnectingDevices;
.super Landroid/app/Fragment;
.source "TagsConnectingDevices.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;
    }
.end annotation


# static fields
.field private static androidBeamState:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0
    .param p0    # Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-direct {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->createHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/TagsConnectingDevices;)V
    .locals 0
    .param p0    # Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-direct {p0}, Lcom/android/settings/nfc/TagsConnectingDevices;->createHelpDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0    # Lcom/android/settings/nfc/TagsConnectingDevices;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/TagsConnectingDevices;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/nfc/TagsConnectingDevices;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/nfc/TagsConnectingDevices;)Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;
    .locals 1
    .param p0    # Lcom/android/settings/nfc/TagsConnectingDevices;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    return-object v0
.end method

.method private createHelpDialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    const-string v1, "TagsConnectingDevices"

    const-string v2, "createHelpDialog() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private createHelpStep2Dialog()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    const-string v1, "TagsConnectingDevices"

    const-string v2, "createHelpStep2Dialog() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400f2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v4, 0x1

    const-string v1, "TagsConnectingDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;->show(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091561

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090308

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$2;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/nfc/TagsConnectingDevices$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$3;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/nfc/TagsConnectingDevices$4;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$4;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;->show(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;

    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v2, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090307

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_beam_state"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    iget-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const-string v3, "fromHelp"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/android/settings/nfc/TagsConnectingDevices$1;

    invoke-direct {v3, p0}, Lcom/android/settings/nfc/TagsConnectingDevices$1;-><init>(Lcom/android/settings/nfc/TagsConnectingDevices;)V

    iput-object v3, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f040247

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v1, "TagsConnectingDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/nfc/TagsConnectingDevices;->androidBeamState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mHelpCtrl:Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;

    iget-object v1, p0, Lcom/android/settings/nfc/TagsConnectingDevices;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/nfc/TagsConnectingDevices$IRwP2pHelpController;->show(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
