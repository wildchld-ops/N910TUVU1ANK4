.class public Lcom/android/phone/callsettings/PhoneNumberLocator;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static isLanguageChange:Z

.field private static state:Z


# instance fields
.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_USER_CANCELED:I

.field private final EVENT_VERSION_SAME:I

.field private autoUpdate:Z

.field private autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

.field private displayVersion:Ljava/lang/String;

.field private final extraSize:I

.field private isNeedRestartService:Z

.field mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

.field private mBinTmpFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoUpdatingToast:Landroid/widget/Toast;

.field private mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

.field private mNumberRegionOnOff:[I

.field private mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field public mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

.field private mVersionTmpFile:Ljava/lang/String;

.field mWLANOn:Z

.field private mWLANOnly:Z

.field private mWLANUpdateOnlyChecked:Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

.field private manualUpdatePreference:Landroid/preference/PreferenceScreen;

.field private updateType:I

.field private version:Landroid/preference/PreferenceScreen;

.field private writeFlagForNetwork:Z

.field private writeFlagForWLAN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->SRC_TAGS:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->extraSize:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionOnOff:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_DOWNLOAD_FINISH:I

    iput v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_HTTP_EXCEPTION:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_FILE_EXCEPTION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_VERSION_SAME:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_COPY_FINISH:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_USER_CANCELED:I

    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$1;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForWLAN:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForNetwork:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOn:Z

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionTmpFile:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mBinTmpFile:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f0904c4
        0x7f0904c5
    .end array-data
.end method

.method private InitAutoUpdate()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "autoUpdateInit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/callsettings/PhoneNumberLocator;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForWLAN:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/callsettings/PhoneNumberLocator;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForNetwork:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/PhoneNumberLocator;)Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/widget/Toast;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/PhoneNumberLocator;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->startDownloadThread()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    const v2, 0x7f0902d0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$7;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$8;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$9;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$10;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$11;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$11;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    return-void
.end method

.method private enablePNLService(Z)V
    .locals 4

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private getDataFromDB()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "updateType"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->updateType:I

    const-string v2, "WLANOnly"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOnly:Z

    const-string v2, "autoUpdateInit"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->InitAutoUpdate()V

    :cond_0
    const-string v2, "autoUpdate"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdate:Z

    return-void
.end method

.method private initLocalnumberDBDownloader()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoneNumberLocator"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "PhoneNumberLocator"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private refreshVersion()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private restartService()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    return-void
.end method

.method private saveAutoUpdate(Z)V
    .locals 4
    .param p1    # Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoUpdate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private saveUdateType(I)V
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updateType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private saveWLANOnly(Z)V
    .locals 4
    .param p1    # Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WLANOnly"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private startDownloadThread()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0904c7

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$12;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$12;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string v1, "Long running dialog(show)"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->startDownloadThread()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error while mProgressDialog working"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "mProgressDialog dismiss()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v3, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayVersion is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v3, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0904d4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->initLocalnumberDBDownloader()V

    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "number_region_activation_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;Lcom/android/phone/callsettings/PhoneNumberLocator$1;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.action.UPDATE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getDataFromDB()V

    const-string v1, "manual_update_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$2;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "version_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    const-string v1, "auto_update_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdate:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v2, 0x7f0904c1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    const-string v1, "wlan_update_only_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Lcom/android/phone/callsettings/PNLWLANOnlyCheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOnly:Z

    if-nez v1, :cond_0

    const-string v1, "wlan not available in oncreate"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->updateType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v2, 0x7f0904c2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v2, 0x7f0904d2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v2, 0x7f0904d3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v2, 0x0

    const v0, 0x7f0904c9

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02029b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    const v1, 0x7f0904c6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02029a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const-string v0, "null != mProgressDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "MENU_RESET_TO_DEFAULT"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902d0

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$14;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$14;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902d1

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$13;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$13;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v6

    goto :goto_0

    :pswitch_1
    const-string v0, "MENU_HELP"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v0, Lcom/android/phone/callsettings/PhoneNumberLocatorHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0904c6

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->createDialog()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/content/SharedPreferences;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "onSharedPreferenceChanged"

    invoke-direct {p0, v6, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    const-string v6, "auto_update_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "KEY_AUTO_UPDATE"

    invoke-direct {p0, v6, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    const-string v6, "3"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSharedPreferenceChanged the type is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v7, 0x7f0904c1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    const-string v6, "number_region_activation_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v4

    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "number_region_activation_preference"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberregion_checked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "number_region_activation_preference"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberRegionActivited: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionOnOff:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    const-string v5, "wlan_update_only_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "KEY_WLAN_UPDATE"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveWLANOnly(Z)V

    :cond_2
    return-void

    :cond_3
    const-string v6, "2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v7, 0x7f0904c2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v7, 0x7f0904d2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const v7, 0x7f0904d3

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    move v1, v5

    goto/16 :goto_1
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "onStop"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public startCopyThread()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$15;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$15;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeChargesNotificationPrefrence()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForWLAN:Z

    if-eqz v2, :cond_0

    const-string v2, "charges_notification_key_wlan"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeFlagForNetwork:Z

    if-eqz v2, :cond_0

    const-string v2, "charges_notification_network"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
