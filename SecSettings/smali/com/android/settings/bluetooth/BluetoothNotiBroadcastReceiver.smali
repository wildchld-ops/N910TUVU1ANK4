.class public final Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNotiBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static carkitIsAdded:Z

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static myplaceIsAtvice:Z

.field private static quickPanelOn:Z


# instance fields
.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->DBG:Z

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->carkitIsAdded:Z

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->myplaceIsAtvice:Z

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mNotiManager:Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    sget-object v2, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "BluetoothNotiBroadcastReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v2, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v1, v0, :cond_0

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    if-nez v0, :cond_0

    const-string v0, "BluetoothNotiBroadcastReceiver"

    const-string v1, "Call list dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->updateDeviceName(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.android.server.BT_IT_POLICY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "ToastMsg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const-string v1, "com.android.settings.REMOTE_NAME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "VZW"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "BluetoothNotiBroadcastReceiver"

    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET is received!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_discoverable_timeout"

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "com.android.settings.CHINA_NAL_SECURITY_SCAN_CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothNotiBroadcastReceiver"

    const-string v1, "com.android.settings.CHINA_NAL_SECURITY_SCAN_CANCEL is received!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothNotiBroadcastReceiver;->quickPanelOn:Z

    goto/16 :goto_0
.end method
