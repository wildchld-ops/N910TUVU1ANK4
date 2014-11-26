.class public Lcom/android/settings/wifi/IwlanEnabler;
.super Ljava/lang/Object;
.source "IwlanEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IWLAN_FREE_SPACE:Ljava/lang/Long;

.field private static mIsIwlanEnable:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultPdgDomainName:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsVpnConnected:Z

.field private mIsWifiConnected:Z

.field private mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private mIwlanNetworks:Landroid/preference/PreferenceCategory;

.field private mIwlandState:I

.field private mPdgDomainName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2800

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 3
    .param p1    # Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    new-instance v1, Lcom/android/settings/wifi/IwlanEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/IwlanEnabler$1;-><init>(Lcom/android/settings/wifi/IwlanEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "iwlan_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v1, "iwlan_networks"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "vpn.connectivity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "action.iwlan.connectivity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z
    .locals 1
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {p0}, Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/IwlanEnabler;)I
    .locals 1
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;

    iget v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I
    .locals 0
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/IwlanEnabler;)Z
    .locals 1
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/wifi/IwlanEnabler;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    return p1
.end method

.method private isAvailableDataStorage()Z
    .locals 9

    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    mul-long v4, v2, v0

    sget-object v7, Lcom/android/settings/wifi/IwlanEnabler;->IWLAN_FREE_SPACE:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isDeamonRunning(Ljava/lang/String;)Z
    .locals 11
    .param p1    # Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ps "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    const/16 v8, 0x200

    new-array v4, v8, [B

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    new-instance v3, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8, v5}, Ljava/lang/String;-><init>([BII)V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v8, v5, -0x6

    if-ge v1, v8, :cond_3

    add-int/lit8 v8, v1, 0x6

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_0
    :goto_1
    return v7

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    throw v7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_4

    :cond_3
    if-eqz v6, :cond_0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_4
.end method

.method public static isIwlanEnable()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    return v0
.end method

.method private isWifiConnected()Z
    .locals 4

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    return v2

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    goto :goto_0
.end method

.method private setIwlanEnabled(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_CONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "actoin.IWLAN_ACTIVITY_REQUEST_DISCONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f09140f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f091415

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f091414

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f091425

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/IwlanEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/IwlanEnabler$2;-><init>(Lcom/android/settings/wifi/IwlanEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getPdgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f09140f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanEnabler;->setIwlanEnabled(Z)V

    const-string v0, "racoon"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanEnabler;->isDeamonRunning(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.iwlan.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.IWLAN_ACTIVITY_REQUEST_GET_STATE_IWLAN_NETWORKS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra.IWLAN_CONNECTING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updataIwlanNetworks(Landroid/content/Intent;)V
    .locals 16
    .param p1    # Landroid/content/Intent;

    const/4 v11, 0x0

    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceGroup;->removeAll()V

    const/4 v7, 0x0

    const-string v12, "extra.IWLAN_NETWORKS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    :cond_0
    const-string v12, "DEFAULT"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;

    :cond_1
    const-string v12, "LIST"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_3

    const-string v12, "SELECTED"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v5, Lcom/android/settings/wifi/IwlanNetwork;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/settings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanNetworks:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/settings/wifi/IwlanNetwork;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "DEFAULT"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/android/settings/wifi/IwlanNetwork;-><init>(Landroid/content/Context;Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    const-string v12, "extra.iwlan.state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "extra.iwlan.state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    :cond_4
    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "extra.IWLAN_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    :cond_5
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_PDG_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_3
    const-string v12, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "extra.IWLAN_CHECKBOX_SUMMARY_STATE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    if-gtz v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIsWifiConnected:Z

    if-eqz v12, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    :goto_7
    const-string v12, "extra.IWLAN_CHECKBOX_ENABLED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_ENABLED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_7
    const-string v12, "extra.IWLAN_CHECKBOX_CHECKED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/Preference;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v13, "extra.IWLAN_CHECKBOX_CHECKED"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_8
    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "extra.IWLAN_ALERTDIALOG_MESSAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->showAlertDialog(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/IwlanEnabler;->getPdgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :cond_b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;

    const v14, 0x7f091416

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_8

    :cond_12
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/wifi/IwlanEnabler;->mIsIwlanEnable:Z

    goto/16 :goto_7

    :catch_1
    move-exception v3

    move-object v7, v8

    goto/16 :goto_2
.end method
