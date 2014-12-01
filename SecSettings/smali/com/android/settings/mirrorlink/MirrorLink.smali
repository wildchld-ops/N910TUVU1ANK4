.class public Lcom/android/settings/mirrorlink/MirrorLink;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;,
        Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;,
        Lcom/android/settings/mirrorlink/MirrorLink$MlApp;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFromSearch:Z

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mListDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/mirrorlink/MirrorLink$MlApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMassStorageActive:Z

.field private mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

.field private mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

.field private mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

.field private mPkgMngr:Landroid/content/pm/PackageManager;

.field private mProvisionApp:[Ljava/lang/String;

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mTargetPreferece:Landroid/preference/CheckBoxPreference;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetheringEnabled:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherEnabling:Z

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTetherEnabling:Z

    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsLightTheme:Z

    iput-boolean v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    iput-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/mirrorlink/MirrorLink;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateMirrorLinkApplications()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/mirrorlink/MirrorLink;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    return p1
.end method

.method private doUnbindFromService()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MirrorLink: doUnbindFromService"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setNcmTethering(Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "usb"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4, v6}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    :cond_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p1, :cond_2

    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNcmTethering(Z)I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f09078a

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "MirrorLink FileNotFoundException"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "usb_tethering_enabled"

    iget-object v9, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-ne v9, v5, :cond_4

    :goto_3
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 1

    iget v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMirrorLinkApplications()V
    .locals 15

    const/4 v14, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v2, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v10}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getAllAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    if-nez v2, :cond_2

    const-string v10, "MirrorLink"

    const-string v11, "AppList is null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v4

    const-string v10, "MirrorLink"

    const-string v11, "Exception while receiving all Application List through AIDl"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-nez v10, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    const-string v11, "mirror_link_applications"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    const v11, 0x7f091b4d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const v13, 0x7f091b4a

    invoke-virtual {p0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v14

    invoke-virtual {p0, v11, v12}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_1
    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    const-string v10, "MirrorLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No of apps: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    const-string v10, "MirrorLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In For Loop: With tthe Index [i] as :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "MirrorLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In For Loop : Package name for the index ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v10, v9}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v10, "MirrorLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In For Loop: Bundle Received for the package Name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    new-instance v8, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;

    const-string v10, "pkgName"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;-><init>(Ljava/lang/String;)V

    const-string v10, "EntitiesName"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setEntityName(Ljava/lang/String;)V

    const-string v10, "AppStatus"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setStatus(Ljava/lang/String;)V

    const-string v10, "VALID_DATE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setValidDate(Ljava/lang/String;)V

    const-string v10, "RESTRICTED"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setRestricted(Ljava/lang/String;)V

    const-string v10, "NONRESTRICTED"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->setNonRestricted(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    iget-object v11, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v10, v5}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIndex(I)V

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v8}, Lcom/android/settings/mirrorlink/MirrorLink$MlApp;->getStatus()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setValidCheck(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    new-instance v11, Lcom/android/settings/mirrorlink/MirrorLink$2;

    invoke-direct {v11, p0}, Lcom/android/settings/mirrorlink/MirrorLink$2;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_5
    iget-object v10, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :catch_1
    move-exception v4

    const-string v10, "MirrorLink"

    const-string v11, "Exception while receiving the information of the Given PackagName through AIDl"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v4

    const-string v10, "MirrorLink"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadAppIcon : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateState()V
    .locals 5

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/mirrorlink/MirrorLink;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 23

    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v15, 0x1

    :goto_0
    const/16 v16, 0x0

    move-object/from16 v4, p1

    array-length v9, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v12, v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v10, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_2

    aget-object v11, v5, v7

    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    if-nez v16, :cond_0

    invoke-virtual {v6, v12}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    move-object/from16 v4, p2

    array-length v9, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    if-ge v8, v9, :cond_9

    aget-object v12, v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v10, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_8

    aget-object v11, v5, v7

    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "ncm"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v18, 0x1

    :cond_4
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "usb"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    :cond_6
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "rndis"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f09078e

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    :cond_8
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_3

    :cond_9
    const/16 v17, 0x0

    move-object/from16 v4, p3

    array-length v9, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_6
    if-ge v8, v9, :cond_c

    aget-object v12, v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v10, v5

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v10, :cond_b

    aget-object v11, v5, v7

    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v17, 0x1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_6

    :cond_c
    const-string v19, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    if-eqz v18, :cond_13

    const-string v19, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090786

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090786

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v19, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const v19, 0x7f091b57

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f091b4a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_e
    :goto_9
    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "sidesync_usb_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f09078f

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090786

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "sidesync_usb_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f09078f

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_9

    :cond_12
    const v19, 0x7f091b57

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f091b4a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_13
    if-eqz v15, :cond_18

    if-nez v16, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f09078f

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    sget v19, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_16
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f09078a

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_a

    :cond_18
    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f09078a

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090788

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090789

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_9
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    if-ne p2, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->startTethering()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iput v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mPkgMngr:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsTablet:Z

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mIsLightTheme:Z

    const-string v3, "ncm_usb_tether_settings"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_0

    move v2, v4

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1070016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    new-instance v3, Lcom/android/settings/mirrorlink/MirrorLink$1;

    invoke-direct {v3, p0}, Lcom/android/settings/mirrorlink/MirrorLink$1;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;)V

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.MIRRORLINK_SERVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLink Settings: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    invoke-interface {v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->performRevocation()V

    const-string v1, "MirrorLink"

    const-string v2, "Manual Revocation excuted"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-boolean v7, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    if-eqz v7, :cond_1

    :cond_0
    sget v7, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    sget v7, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    if-ne v7, v5, :cond_3

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v5}, Lcom/android/settings/mirrorlink/MirrorLink;->startProvisioningIfNecessary(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "usb_tethering_enabled"

    if-ne v2, v5, :cond_5

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v6, :cond_0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "MirrorLink : Binding to Tms"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.sec.android.MIRRORLINK_SERVICE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v1, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    iget-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v6, Lcom/android/settings/mirrorlink/MirrorLink;->mSettingValue:I

    if-ne v6, v4, :cond_3

    move v0, v4

    :goto_0
    const-string v6, "ncm_usb_tether_settings"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTargetPreferece:Landroid/preference/CheckBoxPreference;

    :cond_1
    iget-boolean v6, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mFromSearch:Z

    if-eqz v6, :cond_2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "usb_tethering_enabled"

    iget-object v8, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-ne v8, v4, :cond_4

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    new-instance v3, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$1;)V

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method public onStop()V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_tethering_enabled"

    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
