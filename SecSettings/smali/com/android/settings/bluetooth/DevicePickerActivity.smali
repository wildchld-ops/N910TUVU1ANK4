.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# static fields
.field public static canLaunchQuickBtView:Z

.field public static mMyPlacesCalled:Z


# instance fields
.field private Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

.field private Helpscanbroadcast:Landroid/content/BroadcastReceiver;

.field fromHelp:Z

.field private mActivityResultDone:Z

.field private mBTEnableDisplayed:Z

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mScanBtn:Landroid/widget/Button;

.field private mStartScanOnResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/DevicePickerActivity;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DevicePickerActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    return-object p1
.end method

.method private initialize()V
    .locals 6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09028e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090125

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0901ba

    new-instance v5, Lcom/android/settings/bluetooth/DevicePickerActivity$5;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$5;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f04002e

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity$6;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/DevicePickerActivity$7;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public ScanBtnStateUpdate(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f09089d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    if-nez p1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.bluetooth.CheckBluetoothLEStateActivity"

    if-ne v0, v1, :cond_1

    sput-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V

    :goto_1
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_3

    const-string v0, "DevicePickerActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_1
    const-string v1, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    if-ne v0, v1, :cond_0

    sput-boolean v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromHelp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mStartScanOnResume:Z

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$2;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->fromHelp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Helpscanbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onDestroy of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->Devicepickerbroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onPause of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    return-void
.end method

.method public onPostResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const-string v1, "DevicePickerActivity"

    const-string v2, "onPostResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mStartScanOnResume:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mStartScanOnResume:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$3;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sput-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    const-string v0, "DevicePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    if-ne v0, v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto :goto_0
.end method

.method public showHelpDialog(II)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v4, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    const/4 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v5, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v4, v5}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0b000f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_1

    const v4, 0x7f0b0275

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v4, 0x7f0b000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setHoverPopupType(I)V

    new-instance v4, Lcom/android/settings/bluetooth/DevicePickerActivity$4;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$4;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method
