.class public Lcom/android/settings/bluetooth/BluetoothScanDialog;
.super Landroid/app/Activity;
.source "BluetoothScanDialog.java"


# static fields
.field public static mBtScanDialog:Z

.field private static mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static mScanBtn:Landroid/widget/Button;


# instance fields
.field mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static ScanBtnStateUpdate()V
    .locals 2

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f090125

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    const v1, 0x7f09089d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/widget/Button;
    .locals 1

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Landroid/widget/Button;

    sput-object p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
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

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040039

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;-><init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "BluetoothScanDialog"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->initialize()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mBtScanDialog:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;->mScanBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->ScanBtnStateUpdate()V

    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
