.class public Lcom/android/settings/nearby/NearbyEnabler;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;
    }
.end annotation


# static fields
.field private static final ACCESS_ACCEPT_ALL:Ljava/lang/String; = "0"

.field private static final ACCESS_ONLY_ALLOWED_DEVICES:Ljava/lang/String; = "1"

.field private static final DOWNLAOD_TO_MEMORY:Ljava/lang/String; = "1"

.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_OPTION:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_ONOFF:Ljava/lang/String; = "nearby_settings"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final KEY_ALLSHARE_SHOW_WIFI:Ljava/lang/String; = "allshare_show_wifi"

.field private static final KEY_SEPARATOR:Ljava/lang/String; = "*--*"

.field private static final LENGTH_DEVICE_NAME_MAX:I = 0x37

.field private static final LENGTH_DEVICE_NAME_MAX_HOMESYNC:I = 0x35

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Download"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field public static final SHARE_AUDIO_FLAG:I = 0xff

.field public static final SHARE_IMAGE_FLAG:I = 0xff0000

.field private static final SHARE_VALUE_MUSIC:Ljava/lang/String; = "2"

.field private static final SHARE_VALUE_PHOTOS:Ljava/lang/String; = "1"

.field private static final SHARE_VALUE_VIDEOS:Ljava/lang/String; = "0"

.field public static final SHARE_VIDEO_FLAG:I = 0xff00

.field private static final TAGClass:Ljava/lang/String; = "NearbyEnabler"

.field private static final TEXT_DEVICE_TYPE_CAMERA:Ljava/lang/String; = "[Camera]"

.field private static final TEXT_DEVICE_TYPE_HOMESYNC:Ljava/lang/String; = "[HomeSync]"

.field private static final TEXT_DEVICE_TYPE_MOBILE:Ljava/lang/String; = "[Mobile]"

.field private static final TEXT_DEVICE_TYPE_TABLET:Ljava/lang/String; = "[Tablet]"

.field private static final TEXT_SHOW_ACCESS_CONTROL:Ljava/lang/String; = "*#@&*#"

.field private static final TYPE_NEARBY:Ljava/lang/String; = "TYPE_NEARBY"

.field private static final TYPE_SETTINGS:Ljava/lang/String; = "TYPE_SETTINGS"

.field private static final UPLOAD_ALWAYS_ASK:Ljava/lang/String; = "1"

.field private static isShowWifiCheckingPopup:Z

.field private static mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private static mPreferenceChangeWorker:Landroid/os/Handler;


# instance fields
.field private enablerType:Ljava/lang/String;

.field private isAutoStart:Z

.field private isBound:Z

.field private isBroadcastRegistered:Z

.field private isResumeState:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

.field private final mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

.field private final mNearbyDeviceName:Landroid/preference/PreferenceScreen;

.field private final mNearbyDownloadOption:Landroid/preference/ListPreference;

.field private final mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

.field private final mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

.field private mNearbySwitch:Landroid/widget/Switch;

.field private mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z

    sput-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    sput-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Lcom/android/settings/nearby/DownloadListPreference;Landroid/preference/ListPreference;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    const-string v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    iput-object p5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    iput-object p7, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iput-object p8, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    const-string v0, "TYPE_NEARBY"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setDefaultValues()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/nearby/NearbyEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->switchPreference(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/nearby/NearbyEnabler;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->getListString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/nearby/NearbyEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/nearby/NearbyEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    return p1
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    invoke-static {v5, v6, p1}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    if-eqz p1, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove all \'/\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    const/16 v3, 0x37

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_1

    const/4 v5, 0x0

    const/16 v6, 0x36

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "substring for MAX length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    const-string v1, "[Mobile]"

    const-string v5, "NONE"

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "Featured device: NONE"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[NONE]"

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_3
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_2

    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "TABLET Device"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "[Tablet]"

    goto :goto_0

    :cond_4
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f091244

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getDownloadOption()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "allshare_download_from"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadTo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "No External Volume: Change to Internal"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "HandleSetUploadPath has incorrect value - Init to Default"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private getDownloadTo()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "allshare_download_to"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private getListString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/HashSet;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "*--*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSharedContent()I
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v6}, Lcom/android/settings/nearby/IMediaServer;->getSharedMediaType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v7, "pref_allshare"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "allshare_shared_contents"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v6, "NearbyEnabler"

    const-string v7, "getSharedContent"

    const-string v8, "Init SharedContent Value"

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    :cond_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_1
    if-eqz v3, :cond_2

    const-string v6, "0"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0xff00

    or-int/2addr v1, v6

    :goto_1
    const-string v6, "1"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, 0xff0000

    or-int/2addr v1, v6

    :goto_2
    const-string v6, "2"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    or-int/lit16 v1, v1, 0xff

    :cond_2
    :goto_3
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const v2, -0xff01

    and-int/2addr v1, v2

    goto :goto_1

    :cond_4
    const v2, -0xff0001

    and-int/2addr v1, v2

    goto :goto_2

    :cond_5
    const/16 v2, -0x100

    and-int/2addr v1, v2

    goto :goto_3
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    const-string v1, "NearbyEnabler"

    const-string v2, "initChangePreferenceHandler"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "nearby_settings"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "initChangePreferenceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initEnabler()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    const-string v1, "NearbyEnabler"

    const-string v2, "initEnabler"

    const-string v3, "create new HandlerThread!!"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Preference Change Worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    :cond_0
    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NearbyEnabler"

    const-string v2, "initEnabler"

    const-string v3, "start HandlerThread!!"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_1
    sget-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    if-nez v1, :cond_2

    const-string v1, "NearbyEnabler"

    const-string v2, "initEnabler"

    const-string v3, "create new Handler!!"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initChangePreferenceHandler()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "InitEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on Thread :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isServerStarted()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 5

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    const-string v3, "setBroadcastReceiver()"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "registerBroadcastReceiver"

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

.method private requestRestartServerPopup()V
    .locals 5

    const-string v0, "NearbyEnabler"

    const-string v1, "requestRestartServerPopup"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f091244

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f091252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09123a

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$12;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$12;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09123b

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$11;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$11;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler$10;

    invoke-direct {v1, p0}, Lcom/android/settings/nearby/NearbyEnabler$10;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "requestRestartServerPopup"

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiCheckingPopup()V
    .locals 5

    const-string v0, "NearbyEnabler"

    const-string v1, "requestWifiCheckingPopup"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f040087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b00a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f091481

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0195

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f091483

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09123a

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$7;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/nearby/NearbyEnabler$7;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09123b

    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler$8;

    invoke-direct {v1, p0}, Lcom/android/settings/nearby/NearbyEnabler$8;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$9;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$9;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "requestWifiCheckingPopup"

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiSettingPopup()V
    .locals 5

    const-string v0, "NearbyEnabler"

    const-string v1, "requestWifiSettingPopup"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f091244

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f09123c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09123a

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$6;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler$5;

    invoke-direct {v1, p0}, Lcom/android/settings/nearby/NearbyEnabler$5;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "requestWifiSettingPopup"

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setCheckedState()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "NearbyEnabler"

    const-string v1, "setCheckedState"

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setDefaultValues()V
    .locals 8

    const-string v5, "NearbyEnabler"

    const-string v6, "setDefaultValues"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadOption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getSharedContent()I

    move-result v4

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v4}, Lcom/android/settings/nearby/IMediaServer;->setSharedMediaType(I)V

    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v0}, Lcom/android/settings/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v2}, Lcom/android/settings/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v1}, Lcom/android/settings/nearby/IMediaServer;->setContentUploadAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startDmsService()V
    .locals 6

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-nez v2, :cond_1

    const-string v2, "NearbyEnabler"

    const-string v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v2, :cond_0

    const-string v2, "NearbyEnabler"

    const-string v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NearbyEnabler"

    const-string v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on bind service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private switchPreference(Z)V
    .locals 7

    const/4 v4, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v3, :cond_1

    if-ne p1, v4, :cond_1

    const-string v3, "NearbyEnabler"

    const-string v4, "switchPreference"

    const-string v5, "Start new DMS Serivce"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v3

    if-eq v3, p1, :cond_2

    const-string v3, "NearbyEnabler"

    const-string v4, "switchPreference"

    const-string v5, "Change State to:"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v4, "nearby_settings"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/nearby/NearbyEnabler$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/settings/nearby/NearbyEnabler$1;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "NearbyEnabler"

    const-string v4, "switchPreference"

    const-string v5, "RemoteException: "

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "NearbyEnabler"

    const-string v4, "switchPreference"

    const-string v5, "Change check state"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "NearbyEnabler"

    const-string v4, "switchPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on run: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    const-string v1, "NearbyEnabler"

    const-string v2, "unregisterBroadcastReceiver"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

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
.method public getAcceptEntry()[Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntry()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAcceptEntryValue()[Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntryValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    const-string v0, "NearbyEnabler"

    const-string v1, "getDeviceName"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExernalSdPath()Ljava/lang/String;
    .locals 11

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    const-string v7, "sd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Sd"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "NearbyEnabler"

    const-string v8, "getExernalSdPath"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getRejectList()[Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRejectListValue()[Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectListValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v5, 0x1

    const-string v1, "NearbyEnabler"

    const-string v2, "onCheckedChanged"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v2, "pref_allshare"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/settings/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    const-string v1, "allshare_show_wifi"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiCheckingPopup()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/nearby/NearbyEnabler;->switchPreference(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v4, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, p2, Ljava/lang/Boolean;

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    move v4, v5

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v4, :cond_2

    instance-of v4, p2, Ljava/lang/Boolean;

    if-ne v4, v6, :cond_2

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestRestartServerPopup()V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_5

    :try_start_0
    sget-object v4, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/nearby/NearbyEnabler$2;

    invoke-direct {v7, p0, v1, p1, p2}, Lcom/android/settings/nearby/NearbyEnabler$2;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNearbyDownloadTo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v4}, Lcom/android/settings/nearby/DownloadListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v4, v7

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNearbyDownloadOption: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v4, v7

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v4, "NearbyEnabler"

    const-string v6, "onPreferenceChange"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception run: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move v4, v5

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/nearby/DownloadListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->unregisterBroadcastReceiver()V

    const-string v1, "ALL"

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v1, :cond_6

    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBound:Z

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public reannounceServer()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->reannounceServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/settings/nearby/IMediaServer;->resume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/nearby/DownloadListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->registerBroadcastReceiver()V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 4

    const-string v0, "NearbyEnabler"

    const-string v1, "setSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
