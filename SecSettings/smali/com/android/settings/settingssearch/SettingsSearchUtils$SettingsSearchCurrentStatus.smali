.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchCurrentStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    }
.end annotation


# instance fields
.field private final GLOBAL:I

.field private final NONE:I

.field private final SECURE:I

.field private final SYSTEM:I

.field private final TAG:Ljava/lang/String;

.field private final devOptionKey:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mKeyMatchDBInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SearchDirectSettingUpdate"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->NONE:I

    iput v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->SYSTEM:I

    iput v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->GLOBAL:I

    iput v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->SECURE:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keep_screen_on"

    aput-object v1, v0, v2

    const-string v1, "enforce_read_external"

    aput-object v1, v0, v3

    const-string v1, "enable_adb"

    aput-object v1, v0, v4

    const-string v1, "bugreport_in_power"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "allow_mock_location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wait_for_debugger"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "verify_apps_over_usb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "show_touches"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pointer_location"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "debug_layout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "show_hw_screen_udpates"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "show_hw_layers_udpates"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "show_hw_overdraw"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "show_screen_updates"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "disable_overlays"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "force_hw_ui"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "force_msaa"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "strict_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "show_cpu_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "track_frame_time"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "immediately_destroy_activities"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "show_all_anrs"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "wifi_display_certification"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "force_rtl_layout_all_locales"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->devOptionKey:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->initDBInof()V

    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getCurrentStateNoneType(Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v3, "biometric_weak_liveliness"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v0

    move v3, v0

    :goto_0
    const v0, 0x7f0b074d

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    move v3, v1

    :cond_1
    :goto_1
    if-ne v3, v1, :cond_31

    :goto_2
    return v1

    :cond_2
    const-string v3, "allshare_onoff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "allshare_onoff"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_3
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_4
    const-string v3, "visiblepattern"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_5
    const-string v0, "clear_font"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "persist.sys.font_clarity"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_0

    :cond_7
    const-string v0, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    move v3, v0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    const-string v0, "backup_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    move v3, v0

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v2

    goto :goto_4

    :cond_b
    const-string v0, "location_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gps"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_c
    const-string v0, "location_vzw_gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vzw_lbs"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_d
    const-string v0, "enforce_read_external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "debug_layout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "debug.layout"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_f
    const-string v0, "show_hw_screen_udpates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "debug.hwui.show_dirty_regions"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_10
    const-string v0, "show_hw_layers_udpates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "debug.hwui.show_layers_updates"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_11
    const-string v0, "show_hw_overdraw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v3, v2

    goto/16 :goto_0

    :cond_12
    const-string v0, "show_screen_updates"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_1
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_5
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_6
    move v3, v0

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, v0

    move v0, v2

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v0

    goto/16 :goto_0

    :cond_14
    const-string v0, "disable_overlays"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_3
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v0, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_8
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_9
    move v3, v0

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v3, v0

    move v0, v2

    :goto_a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v0

    goto/16 :goto_0

    :cond_16
    const-string v0, "force_hw_ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "persist.sys.ui.hw"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_17
    const-string v0, "force_msaa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "debug.egl.force_msaa"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_18
    const-string v0, "strict_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v3, v2

    goto/16 :goto_0

    :cond_19
    const-string v0, "persist.sys.strictmode.visual"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_1a
    const-string v0, "track_frame_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "debug.hwui.profile"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_1b
    const-string v0, "backup_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    :try_start_5
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    :goto_b
    move v3, v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v2

    goto :goto_b

    :cond_1c
    const-string v0, "visiblesignature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v3, v2

    goto/16 :goto_0

    :cond_1d
    const-string v0, "location_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_1e
    const-string v0, "location_vzw_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_1f
    const-string v0, "key_simple_led_indicator_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getLedIndicator(Landroid/content/Context;)Z

    move-result v0

    move v3, v0

    goto/16 :goto_0

    :cond_20
    const v0, 0x7f0b074f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_21

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_1

    :cond_21
    move v3, v1

    goto/16 :goto_1

    :cond_22
    const v0, 0x7f0b075e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v3, v1

    goto/16 :goto_1

    :cond_23
    const-string v0, "toggle_android_beam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v1

    goto/16 :goto_1

    :cond_24
    const-string v0, "toggle_sbeam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "pref_sbeam"

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "SBeam_on_off"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_1

    :cond_25
    const-string v0, "location_toggle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "gps"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    if-nez v0, :cond_26

    if-eqz v4, :cond_1

    :cond_26
    move v3, v1

    goto/16 :goto_1

    :cond_27
    const-string v0, "enable_switch_wifi_ap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_28

    move v0, v1

    :goto_c
    move v3, v0

    goto/16 :goto_1

    :cond_28
    move v0, v2

    goto :goto_c

    :cond_29
    const-string v0, "fingerprint_unlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const v3, 0x61000

    if-ne v0, v3, :cond_2a

    move v0, v1

    :goto_d
    move v3, v0

    goto/16 :goto_1

    :cond_2a
    move v0, v2

    goto :goto_d

    :cond_2b
    const-string v0, "power_saving_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "location_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_e
    if-nez v0, :cond_2d

    move v0, v1

    :goto_f
    move v3, v0

    goto/16 :goto_1

    :cond_2c
    move v0, v2

    goto :goto_e

    :cond_2d
    move v0, v2

    goto :goto_f

    :cond_2e
    const-string v0, "toggle_rw_p2p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v7, :cond_2f

    move v0, v1

    :goto_10
    move v3, v0

    goto/16 :goto_1

    :cond_2f
    move v0, v2

    goto :goto_10

    :cond_30
    const-string v0, "location_history"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    goto/16 :goto_1

    :cond_31
    move v1, v2

    goto/16 :goto_2

    :catch_4
    move-exception v3

    goto/16 :goto_a

    :catch_5
    move-exception v3

    goto/16 :goto_7

    :cond_32
    move v3, v2

    goto/16 :goto_0

    :cond_33
    move v0, v2

    goto/16 :goto_9

    :cond_34
    move v0, v2

    goto/16 :goto_6
.end method

.method private getDependecyExceptionState(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "vibrate_when_ringing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vibrate"

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mute"

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v0, "lock_screen_short_or_camera_widget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    const-string v0, "wait_for_debugger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    const-string v0, "verify_apps_over_usb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->enableVerifierSetting()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_8
    const-string v0, "multiple_lock_screenswitch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "lock_screen_myprofile_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "lock_screen_wakeup_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "lock_screen_shortcut_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_a
    const v0, 0x7f0b0788

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_d

    move v3, v1

    :goto_3
    if-eqz v0, :cond_b

    if-nez v3, :cond_1

    :cond_b
    move v1, v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_2

    :cond_d
    move v3, v2

    goto :goto_3

    :cond_e
    const-string v0, "send_dual_captured_image_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_emergency_message"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "send_b_emergency_message"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_f
    const-string v0, "lcd_curtain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "rapid_key_input"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_4
    move v1, v2

    goto/16 :goto_0

    :cond_11
    const-string v0, "usb_tether_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "usb_connection_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_0

    :cond_12
    const-string v0, "adaptive_fast_charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "battery_charging_state"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_13
    const-string v0, "ncm_usb_tether_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "usb_connection_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_0

    :cond_14
    const-string v0, "lock_screen_camera_shortcut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "easy_mode_select_all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_15

    :goto_5
    move v1, v2

    goto/16 :goto_0

    :cond_15
    move v2, v1

    goto :goto_5

    :cond_16
    const-string v0, "power_saving_cpu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "power_saving_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "power_saving_background_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "power_saving_haptic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "power_saving_touchkey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "power_saving_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_17
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "powersaving_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "psm_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_6
    if-ne v0, v1, :cond_19

    move v0, v1

    :goto_7
    const-string v3, "power_saving_location"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1a

    :goto_8
    if-nez v1, :cond_18

    move v0, v2

    :cond_18
    move v1, v0

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto :goto_7

    :cond_1a
    move v1, v2

    goto :goto_8

    :cond_1b
    const-string v0, "wifi_auto_network_switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchCheckBox(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_1c
    const-string v0, "haptic_feedback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "sip_feedback_vibration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "powersaving_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "psm_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_1e
    const-string v0, "smartscreen_rotation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_1f
    move v0, v2

    :goto_9
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->devOptionKey:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    move v0, v2

    goto/16 :goto_6

    :cond_22
    move v2, v1

    goto/16 :goto_4
.end method

.method private getLedIndicator(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_charing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_low_battery"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_missed_event"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_voice_recording"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "off"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDBInof()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b074d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b074f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b075e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0760

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sbeam_mode"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0771

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0772

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0777

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0783

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0782

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0784

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b07bd

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "air_motion_engine"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b07be

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "master_motion"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b07bf

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "surface_motion_engine"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b07b3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0752

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0788

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b078f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b07c0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auto_adjust_touch"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0791

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "festival_effect_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "wifi_auto_network_switch"

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notifyMe"

    const-string v4, "wifi_offload_network_notify"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f0b0754

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_bonding_popup"

    const-string v4, "smart_bonding_notification_do_not_show_speed"

    const v5, 0x7f0b0754

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "usb_tether_settings"

    const-string v4, "usb_tethering_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_bluetooth_tethering"

    const-string v4, "bluetooth_tethering_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_switch_wifi_ap"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_airplane"

    const-string v4, "airplane_mode_on"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "allshare_onoff"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_android_beam"

    const v4, 0x7f0b075e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_sbeam"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "ncm_usb_tether_settings"

    const-string v4, "usb_tethering_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "multiple_lock_screen"

    const-string v4, "kg_multiple_lockscreen"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const-string v4, "unlock_text"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "say_your_wakeup"

    const-string v4, "wake_up_lock_screen"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_swipe"

    const-string v4, "auto_swipe_main_user"

    invoke-direct {p0, v3, v4, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const-string v4, "lock_screen_quick_note"

    invoke-direct {p0, v3, v4, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const-string v4, "lock_screen_shortcut"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_magazine_card"

    const-string v4, "lock_screen_card_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "safetyzone_settings"

    const-string v4, "safety_zone_enable"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "multiple_lock_screenswitch"

    const-string v4, "kg_multiple_lockscreen"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_myprofile_settings"

    const-string v4, "my_profile_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_wakeup_settings"

    const-string v4, "wake_up_lock_screen"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dualclock_settings"

    const-string v4, "dualclock_menu_settings"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "additional_information"

    const-string v4, "lock_additional_info"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "vibration_feedback"

    const-string v4, "lock_screen_vibration_feedback"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_camera_shortcut"

    const-string v4, "set_shortcuts_mode"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_show_info"

    const-string v4, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_show_clock"

    const-string v4, "lock_screen_show_clock"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_date_and_year"

    const-string v4, "lock_screen_date_and_year"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "upcoming_event"

    const-string v4, "lock_upcoming_event"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "android.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_info_weather"

    const-string v4, "lock_additional_weather"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "steps"

    const-string v4, "lock_additional_steps"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_multi_window"

    const-string v4, "multi_window_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "accelerometer"

    const-string v4, "accelerometer_rotation"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "clear_font"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const-string v4, "display_battery_percentage"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "edit_screen_capture"

    const-string v4, "edit_after_screen_capture"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_mode"

    const-string v4, "power_saving_mode"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_adjust_touch"

    const-string v4, "auto_adjust_touch"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "reading_mode"

    const-string v4, "e_reading_display_mode"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "screensaver"

    const-string v4, "screensaver_enabled"

    invoke-direct {p0, v3, v4, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_simple_led_indicator_settings"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_charging_key"

    const-string v4, "led_indicator_charing"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_low_battery_key"

    const-string v4, "led_indicator_low_battery"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_missed_event_key"

    const-string v4, "led_indicator_missed_event"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_voice_recording_key"

    const-string v4, "led_indicator_voice_recording"

    const-string v5, "led_indicator_missed_event_key"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_incoming_notification_key"

    const-string v4, "led_indicator_incoming_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "vibrate_when_ringing"

    const-string v4, "vibrate_when_ringing"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dtmf_tone"

    const-string v4, "dtmf_tone"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_effects"

    const-string v4, "sound_effects_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_sounds"

    const-string v4, "lockscreen_sounds_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "gps_notification_sounds"

    const-string v4, "gps_noti_sound_enabled"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback"

    const-string v4, "haptic_feedback_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dock_audio_media_enabled"

    const-string v4, "dock_audio_media_enabled"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const-string v4, "dock_sounds_enabled"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_sound"

    const-string v4, "sip_key_feedback_sound"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_vibration"

    const-string v4, "sip_key_feedback_vibration"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_incoming_calls"

    const-string v4, "dormant_disable_incoming_calls"

    const v5, 0x7f0b0771

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_notifications"

    const-string v4, "dormant_disable_notifications"

    const v5, 0x7f0b0771

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_alarm_and_timer"

    const-string v4, "dormant_disable_alarm_and_timer"

    const v5, 0x7f0b0771

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_led_indicator"

    const-string v4, "dormant_disable_led_indicator"

    const v5, 0x7f0b0771

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "always"

    const-string v4, "dormant_always"

    const v5, 0x7f0b0771

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "personalpage_auto_disable_screen_off"

    const-string v4, "personal_mode_auto_disable_when_screen_off"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "chaton_mode_notification"

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_call_accept_hands_free"

    const-string v4, "driving_mode_air_call_accept"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const-string v4, "driving_mode_message_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "email_notification"

    const-string v4, "driving_mode_email_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_mail_notification"

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const-string v4, "driving_mode_alarm_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const-string v4, "driving_mode_schedule_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "unlock_screen_contents"

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_incomming_calls"

    const-string v4, "voice_input_control_incomming_calls"

    const v5, 0x7f0b0784

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_chatonv"

    const-string v4, "voice_input_control_chatonv"

    const v5, 0x7f0b0784

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_alarm"

    const-string v4, "voice_input_control_alarm"

    const v5, 0x7f0b0784

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_camera"

    const-string v4, "voice_input_control_camera"

    const v5, 0x7f0b0784

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_music"

    const-string v4, "voice_input_control_music"

    const v5, 0x7f0b0784

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "powersaving_tablet"

    const-string v4, "powersaving_switch"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "ultra_powersaving_tablet"

    const-string v4, "ultra_powersaving_mode"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_cpu"

    const-string v4, "psm_cpu_clock"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_display"

    const-string v4, "psm_display"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_background_color"

    const-string v4, "psm_background_colour"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_haptic"

    const-string v4, "psm_haptic_feedback"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_auto_turn_on"

    const-string v4, "psm_auto_turn_on"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_touchkey"

    const-string v4, "psm_touchkey_led"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_location"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "data_powersaving_check"

    const-string v4, "data_powersaving_mode"

    const-string v5, "powersaving_tablet"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "basic_powersaving_tablet"

    const-string v4, "psm_switch"

    const-string v5, "powersaving_tablet"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "black_grey_powersaving_tablet"

    const-string v4, "blackgrey_powersaving_mode"

    const-string v5, "powersaving_tablet"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "adaptive_fast_charging"

    const-string v4, "adaptive_fast_charging"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const-string v4, "dock_sounds_enabled"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "cradle_enable"

    const-string v4, "cradle_enable"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "desk_home_screen_display"

    const-string v4, "desk_home_screen_display"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "automatic_unlock"

    const-string v4, "automatic_unlock"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "audio_applications"

    const-string v4, "audio_applications"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "book_cover_automatic_unlock"

    const-string v4, "automatic_unlock"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "easy_mode_select_all"

    const-string v4, "easy_mode_select_all"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_auto_rotate_screen_2nd_preference"

    const-string v4, "accelerometer_rotation_second"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_lock_screen_rotation_preference"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_power_button_ends_call_preference"

    const-string v4, "incall_power_button_behavior"

    invoke-direct {p0, v3, v4, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_key_hold"

    const-string v4, "power_key_hold"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_easy_interaction_preference"

    const-string v4, "easy_interaction"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_access"

    const-string v4, "direct_access"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lcd_curtain"

    const-string v4, "lcd_curtain"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "rapid_key_input"

    const-string v4, "rapid_key_input_menu_checked"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_speak_password_preference"

    const-string v4, "speak_password"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v8, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "screen_magnification_preference_screen"

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-direct {p0, v3, v4, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_preference"

    const-string v4, "notification_reminder"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "high_contrast"

    const-string v4, "high_contrast"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "color_blind"

    const-string v4, "color_blind"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_global_gesture_preference_screen"

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "flash_notification_key"

    const-string v4, "flash_notification"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "all_sound_off_key"

    const-string v4, "all_sound_off"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "call_hearing_aid"

    const-string v4, "hearing_aid"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "samsung_captioning_preference_screen"

    const-string v4, "accessibility_sec_captioning_enabled"

    invoke-direct {p0, v3, v4, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "google_captioning_preference_screen"

    const-string v4, "accessibility_captioning_enabled"

    invoke-direct {p0, v3, v4, v8, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "mono_audio_key"

    const-string v4, "mono_audio_db"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_haptic_key"

    const-string v4, "def_tactileassist_enable"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.sounddetector"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_detector_preference"

    const-string v4, "sound_detector"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "assistant_menu_preference"

    const-string v4, "assistant_menu"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_wake_up"

    const-string v4, "air_motion_wake_up"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "access_control_key"

    const-string v4, "access_control_use"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_accessibility"

    const-string v4, "direct_accessibility"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_talkback"

    const-string v4, "direct_talkback"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_negative"

    const-string v4, "direct_negative"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_accesscontrol"

    const-string v4, "direct_access_control"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "fingerprint_unlock"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "support_secret_box"

    const-string v4, "fingerprint_secret_box"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "support_webpass"

    const-string v4, "fingerprint_webpass"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "support_samsung_account"

    const-string v4, "fingerprint_used_samsungaccount"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_finger_print"

    const-string v4, "lock_screen_fingerprint_shortcut"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_stay"

    const-string v4, "intelligent_sleep_mode"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_rotation"

    const-string v4, "intelligent_rotation_mode"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_pause"

    const-string v4, "smart_pause"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_web"

    const-string v4, "smart_scroll_adv_web"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_email_list"

    const-string v4, "smart_scroll_adv_email_list"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_email_body"

    const-string v4, "smart_scroll_adv_email_body"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_readers_hub"

    const-string v4, "smart_scroll_adv_readers_hub"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_chrome"

    const-string v4, "smart_scroll_adv_chrome"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_gmail_body"

    const-string v4, "smart_scroll_adv_gmail_body"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_scroll"

    const-string v4, "smart_scroll"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_mouse_over"

    const-string v4, "mouse_hovering"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_preview_and_icon_labels"

    const-string v4, "mouse_hovering_information_preview"

    const-string v5, "key_mouse_over"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_list_scrolling"

    const-string v4, "mouse_hovering_list_scroll"

    const-string v5, "key_mouse_over"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_motion"

    const-string v4, "air_motion_engine"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "motion"

    const-string v4, "master_motion"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "surface"

    const-string v4, "surface_motion_engine"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_turn_and_scroll"

    const-string v4, "air_motion_scroll"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "merged_mute_or_pause"

    const-string v4, "motion_merged_mute_pause"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "camera_quick_access"

    const-string v4, "camera_quick_access"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "quick_application_access"

    const-string v4, "quick_application_access"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up_switch"

    const-string v4, "motion_pick_up"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up_to_call_out_switch"

    const-string v4, "motion_pick_up_to_call_out"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "merged_mute_or_pause_switch"

    const-string v4, "motion_merged_mute_pause"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_swipe_switch"

    const-string v4, "surface_palm_swipe"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "email_body"

    const-string v4, "air_motion_scroll_email_body"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "single_photo_view"

    const-string v4, "air_motion_turn_single_photo_view"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "internet_window"

    const-string v4, "air_motion_turn_internet_window"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "now_playing_on_music"

    const-string v4, "air_motion_turn_now_playing_on_music"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "bgm_on_lock_screen"

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "note_page_view"

    const-string v4, "air_motion_turn_note_page_view"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_touch"

    const-string v4, "surface_palm_touch"

    const-string v5, "merged_mute_or_pause"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "turn_over"

    const-string v4, "motion_overturn"

    const-string v5, "merged_mute_or_pause"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_pause"

    const-string v4, "smart_pause"

    const-string v5, "merged_mute_or_pause"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_touch_switch"

    const-string v4, "surface_palm_touch"

    const-string v5, "merged_mute_or_pause_switch"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_pause_switch"

    const-string v4, "smart_pause"

    const-string v5, "merged_mute_or_pause_switch"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "camera_quick_access_sound_feedback"

    const-string v4, "camera_quick_access_sound_feedback"

    const-string v5, "camera_quick_access"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "quick_glance"

    const-string v4, "air_motion_glance_view"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_scroll"

    const-string v4, "air_motion_scroll"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_turn"

    const-string v4, "air_motion_turn"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_move"

    const-string v4, "air_motion_item_move"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_call_accept"

    const-string v4, "air_motion_call_accept"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_pin"

    const-string v4, "air_motion_clip"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up_to_call_out"

    const-string v4, "motion_pick_up_to_call_out"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up"

    const-string v4, "motion_pick_up"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "tilt"

    const-string v4, "motion_zooming"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pan_to_browse_image"

    const-string v4, "motion_pan_to_browse_image"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_swipe"

    const-string v4, "surface_palm_swipe"

    const-string v5, "surface"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "time_and_date"

    const-string v4, "air_motion_turn_single_photo_view"

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification"

    const-string v4, "glance_view_notification"

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "missed_call"

    const-string v4, "glance_view_missed_call"

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "unread_message"

    const-string v4, "glance_view_new_message"

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "battery"

    const-string v4, "glance_view_battery_charging_info"

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "current_music"

    const-string v4, "glance_view_now_playing_music"

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "advanced_air_call_accept_auto_start_speaker"

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    const-string v5, "air_call_accept"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "backup_data"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_restore"

    const-string v4, "backup_auto_restore"

    const-string v5, "backup_data"

    invoke-direct {p0, v3, v4, v8, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "location_gps"

    const-string v4, "location_toggle"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "mNetwork"

    const-string v4, "location_toggle"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "assisted_gps"

    const-string v4, "assisted_gps_enabled"

    const-string v5, "location_toggle"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "location_toggle"

    invoke-direct {p0, v3, v6, v2, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "LockMyMobile"

    const-string v4, "lock_my_mobile"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_password"

    const-string v4, "show_password"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_install_applications"

    const-string v4, "install_non_market_apps"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_verify_applications"

    const-string v4, "package_verifier_enable"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_policy_update"

    const-string v4, "security_update_db"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "use_wifi_only"

    const-string v4, "use_wifi_only_db"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "security_reports"

    const-string v4, "send_security_reports"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_policy_update"

    const-string v4, "security_update_db"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_time"

    const-string v4, "auto_time"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_zone"

    const-string v4, "auto_time_zone"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "24 hour"

    const-string v4, "time_12_24"

    invoke-direct {p0, v3, v4, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "keep_screen_on"

    const-string v4, "stay_on_while_plugged_in"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enforce_read_external"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_adb"

    const-string v4, "adb_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "bugreport_in_power"

    const-string v4, "bugreport_in_power_menu"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v8, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "allow_mock_location"

    const-string v4, "mock_location"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v8, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "wait_for_debugger"

    const-string v4, "wait_for_debugger"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "verify_apps_over_usb"

    const-string v4, "verifier_verify_adb_installs"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_touches"

    const-string v4, "show_touches"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pointer_location"

    const-string v4, "pointer_location"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "debug_layout"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_hw_screen_udpates"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_hw_layers_udpates"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "force_rtl_layout_all_locales"

    const-string v4, "debug.force_rtl"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_hw_overdraw"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_screen_updates"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_overlays"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "force_hw_ui"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "force_msaa"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "strict_mode"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_cpu_usage"

    const-string v4, "show_processes"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "track_frame_time"

    const-string v4, "exception"

    invoke-direct {p0, v3, v6, v2, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "immediately_destroy_activities"

    const-string v3, "always_finish_activities"

    const-string v4, "exception"

    invoke-direct {p0, v2, v3, v7, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "show_all_anrs"

    const-string v3, "anr_show_background"

    const-string v4, "exception"

    invoke-direct {p0, v2, v3, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "wifi_display_certification"

    const-string v3, "wifi_display_certification_on"

    const-string v4, "exception"

    invoke-direct {p0, v2, v3, v7, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_diagnostics_info"

    const-string v3, "samsung_errorlog_agree"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "torchlight_enable"

    const-string v3, "torchlight_enable"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "brightness_adjustment"

    const-string v3, "notification_panel_brightness_adjustment"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "toolbox"

    const-string v3, "toolbox_onoff"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "open_multi_window_view"

    const-string v3, "open_multi_window_view"

    const v4, 0x7f0b0788

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "popup_view_shortcut"

    const-string v3, "db_popup_view_shortcut"

    const v4, 0x7f0b0788

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "show_briefing_information"

    const-string v3, "show_briefing_information"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "show_camera_shortcut"

    const-string v3, "camera_quick_access"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_visual_feedback_icon"

    const-string v3, "smart_scroll_visual_feedback_icon"

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_adv_web"

    const-string v3, "smart_scroll_adv_web"

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_adv_email_list"

    const-string v3, "smart_scroll_adv_email_list"

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_adv_email_body"

    const-string v3, "smart_scroll_adv_email_body"

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_adv_readers_hub"

    const-string v3, "smart_scroll_adv_readers_hub"

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_adv_chrome"

    const-string v3, "smart_scroll_adv_chrome"

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "smart_scroll_adv_gmail_body"

    const-string v3, "smart_scroll_adv_gmail_body"

    const-string v4, "smartscreen_scroll"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_pen_information_preview"

    const-string v3, "pen_hovering_information_preview"

    const v4, 0x7f0b0783

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_pen_progress_preview"

    const-string v3, "pen_hovering_progress_preview"

    const v4, 0x7f0b0783

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_pen_speed_dial_preview"

    const-string v3, "pen_hovering_speed_dial_preview"

    const v4, 0x7f0b0783

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_pen_webpage_magnifier"

    const-string v3, "pen_hovering_webpage_magnifier"

    const v4, 0x7f0b0783

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_pen_icon_label"

    const-string v3, "pen_hovering_icon_label"

    const v4, 0x7f0b0783

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_pen_list_scroll"

    const-string v3, "pen_hovering_list_scroll"

    const v4, 0x7f0b0783

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_pen_sound_and_haptic_feedback"

    const-string v3, "pen_hovering_sound"

    const v4, 0x7f0b0783

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "information_preview"

    const-string v3, "finger_air_view_information_preview"

    const v4, 0x7f0b0782

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "progress_bar_preview"

    const-string v3, "finger_air_view_pregress_bar_preview"

    const v4, 0x7f0b0782

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "speed_dial_tip"

    const-string v3, "finger_air_view_speed_dial_tip"

    const v4, 0x7f0b0782

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "magnifier"

    const-string v3, "finger_air_view_magnifier"

    const v4, 0x7f0b0782

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "sound_and_haptic_feedback"

    const-string v3, "finger_air_view_sound_and_haptic_feedback"

    const v4, 0x7f0b0782

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "hltejs01dcm"

    const-string v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SC-02F"

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v2, 0x7f0b0782

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "finger_air_view"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_spen_pointer"

    const-string v3, "pen_hovering_pointer"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "battery_saving"

    const-string v3, "pen_detect_mode_disabled"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "loss_prevention_alert"

    const-string v3, "pen_detachment_alert"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_writing_buddy"

    const-string v3, "pen_writing_buddy"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "pen_attach_detach_vibration"

    const-string v3, "pen_attach_detach_vibration"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "writing_haptic_feedback"

    const-string v3, "pen_writing_haptic_feedback"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "writing_sound"

    const-string v3, "pen_writing_sound"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_air_button"

    const-string v3, "air_button_onoff"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "pen_air_view"

    const-string v3, "pen_hovering"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_additional_feedback_pen_sound"

    const-string v3, "spen_feedback_sound"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "key_additional_feedback_pen_haptic"

    const-string v3, "spen_feedback_haptic"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "sound_feedback_air_command"

    const-string v3, "spen_feedback_sound_air_command"

    const-string v4, "key_additional_feedback_pen_sound"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "sound_feedback_air_view"

    const-string v3, "spen_feedback_sound_air_view"

    const-string v4, "key_additional_feedback_pen_sound"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "sound_feedback_handwriting"

    const-string v3, "pen_writing_sound"

    const-string v4, "key_additional_feedback_pen_sound"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "haptic_feedback_air_command"

    const-string v3, "spen_feedback_haptic_air_command"

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "haptic_feedback_air_view"

    const-string v3, "spen_feedback_haptic_air_view"

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "haptic_feedback_handwriting"

    const-string v3, "pen_writing_haptic_feedback"

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "haptic_feedback_pen_gesture"

    const-string v3, "spen_feedback_haptic_pen_gesture"

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "interaction_area"

    const-string v3, "interactionarea_switch"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "sidesoftkey"

    const-string v3, "sidesoftkey_switch"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "any_screen"

    const-string v3, "any_screen_enabled"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "dialer"

    const-string v3, "onehand_dialer_enabled"

    const-string v4, "interaction_area"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "samsung_keypad"

    const-string v3, "onehand_samsungkeypad_enabled"

    const-string v4, "interaction_area"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "calculator"

    const-string v3, "onehand_calculator_enabled"

    const-string v4, "interaction_area"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "pattern"

    const-string v3, "onehand_pattern_enabled"

    const-string v4, "interaction_area"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "onehand_sidesoftkey_minimise"

    const-string v3, "sidesoftkey_minimise"

    const-string v4, "sidesoftkey"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "notification_panel_j"

    const-string v3, "festival_effect_notification_panel"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "lock_screen_wallpaper_j"

    const-string v3, "festival_effect_home_lock_screen"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "messages_background_j"

    const-string v3, "festival_effect_messages_background"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "sim_toggle"

    const-string v3, "icc_lock_enable"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "auto_update"

    const-string v3, "SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "wifi_only"

    const-string v3, "SOFTWARE_UPDATE_WIFI_ONLY"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "lock_screen_short_or_camera_widget"

    const-string v3, "kg_enable_camera_widget"

    const-string v4, "exception"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "pen_air_view"

    const-string v3, "pen_hovering"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "weather"

    const-string v3, "weather_cover"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "walking_mate"

    const-string v3, "walk_mate"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "scover_airmessage"

    const-string v3, "air_message"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "send_dual_captured_image_key"

    const-string v3, "send_dual_captured_image"

    const-string v4, "exception"

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "capture_by_active_key"

    const-string v3, "capture_by_active_key"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_info_weather"

    const-string v4, "lock_additional_weather"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "steps"

    const-string v4, "lock_additional_steps"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const-string v4, "driving_mode_incoming_call_notification"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "chaton_mode_notification"

    const-string v4, "driving_mode_chaton_call_notification"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_call_accept_hands_free"

    const-string v4, "driving_mode_air_call_accept"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const-string v4, "driving_mode_message_notification"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "email_notification"

    const-string v4, "driving_mode_email_notification"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_mail_notification"

    const-string v4, "driving_mode_voice_mail_notification"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const-string v4, "driving_mode_alarm_notification"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const-string v4, "driving_mode_schedule_notification"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "unlock_screen_contents"

    const-string v4, "driving_mode_unlock_screen_contents"

    const v5, 0x7f0b0772

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "dialer"

    const-string v3, "onehand_dialer_enabled"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "samsung_keypad"

    const-string v3, "onehand_samsungkeypad_enabled"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "calculator"

    const-string v3, "onehand_calculator_enabled"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "pattern"

    const-string v3, "onehand_pattern_enabled"

    invoke-direct {p0, v2, v3, v1, v6}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    const-string v0, "2"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL_EFFECT_VERSION"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "home_lock_screen"

    const-string v3, "festival_effect_home_lock_screen"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "notification_panel"

    const-string v3, "festival_effect_notification_panel"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "notification_panel"

    const-string v3, "festival_effect_notification_panel"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "festival_home"

    const-string v3, "festival_effect_festival_home"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "lock_screen_wallpaper"

    const-string v3, "festival_effect_lockscreen_wallpaper"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "unlock_effect"

    const-string v3, "festival_effect_unlock_effect"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "charging_effect"

    const-string v3, "festival_effect_charging_effect"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v2, "messages_background"

    const-string v3, "festival_effect_messages_background"

    const v4, 0x7f0b0791

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private isPermissionEnforced(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Ljava/lang/String;

    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;-><init>(Lcom/android/settings/settingssearch/SettingsSearchUtils$1;)V

    iput-object p1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    iput p3, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBType:I

    iput-object p4, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCurrentState(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v4, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBType:I

    move v1, v0

    move-object v0, v4

    :goto_1
    if-ne v1, v3, :cond_4

    const-string v1, "lock_show_info"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "show_camera_shortcut"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock_screen_show_clock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "key_diagnostics_info"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock_info_weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "steps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "show_password"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_2
    const-string v1, "24 hour"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    move v2, v3

    :cond_1
    :goto_3
    return v2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    const-string v1, "auto_restore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getCurrentStateNoneType(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    :goto_4
    move v2, v3

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_4

    :cond_a
    move-object v0, v4

    move v1, v5

    goto/16 :goto_1
.end method

.method public getDependecyState(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    :cond_0
    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getDependecyExceptionState(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getCurrentState(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
