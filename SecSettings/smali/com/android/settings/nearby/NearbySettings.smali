.class public Lcom/android/settings/nearby/NearbySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DOWNLAOD_TO_MEMORY:Ljava/lang/String; = "1"

.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final HANDLER_SELF_FINISH:I = 0xbbb

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_FROME:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final LENGTH_DEVICE_NAME_MAX:I = 0x37

.field private static final LENGTH_DEVICE_NAME_MAX_HOMESYNC:I = 0x35

.field private static final MENU_DEVICE_NAME:I = 0x0

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field private static final TAGClass:Ljava/lang/String; = "NearbySettings"

.field protected static lengthDeviceNameMax:I


# instance fields
.field private bRegisterReceiver:Z

.field private bSdCardSupport:Z

.field private bSelfFinish:Z

.field private mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/PreferenceScreen;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

.field private mSearchpreference:Landroid/preference/Preference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    new-instance v0, Lcom/android/settings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$1;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/nearby/NearbySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$2;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/NearbyEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    return p1
.end method

.method private initPreferences()V
    .locals 5

    const-string v1, "NearbySettings"

    const-string v2, "initPreferences"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySettings"

    const-string v2, "initPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportSDCard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private setBroadcastReceiver()V
    .locals 7

    const/4 v6, 0x1

    const-string v2, "NearbySettings"

    const-string v3, "setBroadcastReceiver"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings.connected_mediaServer"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "NearbySettings"

    const-string v3, "setBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    const-string v1, "NearbySettings"

    const-string v2, "unregisterBroadcastReceiver"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySettings"

    const-string v2, "unregisterBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isExternalStorageSdMounted()Z
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v4}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "NearbySettings"

    const-string v5, "isExternalStorageSdMounted()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    const-string v4, "NearbySettings"

    const-string v5, "isExternalStorageSdMounted()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception v0

    const-string v4, "NearbySettings"

    const-string v5, "isExternalStorageSdMounted"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const-string v1, "NearbySettings"

    const-string v2, "onActivityCreated"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySettings"

    const-string v2, "onActivityCreated"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->isSupportSDCard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v4, "pref_allshare"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_6

    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const/16 v1, 0x37

    sput v1, Lcom/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    :try_start_0
    const-string v1, "allshare_device_name"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v1, "allshare_shared_contents"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "allshare_download_to"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nearby/DownloadListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    :cond_0
    const-string v1, "allshare_download_from"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    const-string v1, "allshare_accept_device"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nearby/AcceptListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    const v4, 0x7f091242

    invoke-virtual {v1, v4}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "allshare_reject_device"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nearby/RejectListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    const v4, 0x7f091242

    invoke-virtual {v1, v4}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    const v4, 0x7f091249

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->setBroadcastReceiver()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    :try_start_1
    instance-of v1, v2, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_4

    move-object v0, v2

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v4, 0x7f091244

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f004c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    const-string v5, "Set Switch padding 0"

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v13, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const v7, 0x800015

    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    iget-object v7, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v9, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Lcom/android/settings/nearby/DownloadListPreference;Landroid/preference/ListPreference;)V

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/AcceptListPreference;->setEnabler(Lcom/android/settings/nearby/NearbyEnabler;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/RejectListPreference;->setEnabler(Lcom/android/settings/nearby/NearbyEnabler;)V

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSdCardSupport:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    new-instance v12, Landroid/content/Intent;

    const-string v1, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FLAG"

    invoke-virtual {v12, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_6
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v11

    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "NearbySettings"

    const-string v2, "onCreateOptionsMenu"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f091257

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nearby/DMSUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f091256

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v4, v4, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02016b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v1, "NearbySettings"

    const-string v2, "onDestroy"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    if-nez v1, :cond_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbySettings"

    const-string v2, "onDestroy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v1, "NearbySettings"

    const-string v2, "onOptionsItemSelected"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DEVICE_NAME_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const-string v1, "NearbySettings"

    const-string v2, "onPause"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FLAG"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "NearbySettings"

    const-string v9, "onPreferenceClick"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_accept_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_reject_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_accept_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "NearbySettings"

    const-string v9, "onPreferenceClick"

    const-string v10, "KEY_ALLSHARE_ACCEPTED_DEVICE"

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v8}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v4, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {v0, v3, v1, v8, v9}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_reject_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "NearbySettings"

    const-string v9, "onPreferenceClick"

    const-string v10, "KEY_ALLSHARE_REJECTED_DEVICE"

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v8}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v4, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v3, v1, v8, v9}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return v6

    :catch_0
    move-exception v2

    const-string v6, "NearbySettings"

    const-string v8, "onPreferenceClick"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v6, v7

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "NearbySettings"

    const-string v4, "onResume"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-ne v3, v7, :cond_0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSearchpreference:Landroid/preference/Preference;

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v3}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->initPreferences()V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "FLAG"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "SCREEN"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    return-void

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSearchpreference:Landroid/preference/Preference;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSearchpreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "NearbySettings"

    const-string v1, "onSaveInstanceState"

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
