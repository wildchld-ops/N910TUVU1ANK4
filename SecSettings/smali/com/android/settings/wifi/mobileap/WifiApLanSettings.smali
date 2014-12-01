.class public Lcom/android/settings/wifi/mobileap/WifiApLanSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDhcpEnable:Z

.field private mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

.field private mDhcpEndIp:Ljava/lang/String;

.field private mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

.field private mDhcpLeaseTime:I

.field private mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

.field private mDhcpMaxUser:I

.field private mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

.field private mDhcpStartIp:Ljava/lang/String;

.field private mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

.field private mIsTablet:Z

.field private mLocalIp:Ljava/lang/String;

.field private mLocalIpETPref:Landroid/preference/EditTextPreference;

.field private mMenuItemCancel:Landroid/view/MenuItem;

.field private mMenuItemSave:Landroid/view/MenuItem;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mServerConfig:Landroid/net/DhcpServerConfiguration;

.field private mSubnetmask:Ljava/lang/String;

.field private mSubnetmaskETPref:Landroid/preference/EditTextPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifiap_local_ip_addrs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wifiap_local_subnetmask"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifiap_dhcp_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wifiap_dhcp_start_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wifiap_dhcp_end_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wifiap_dhcp_lease_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wifiap_dhcp_max_user"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->saveAndFinishServerSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->readServerSettings()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->fillLayout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    return-object p1
.end method

.method private convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    and-int v3, v0, v1

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->intToIp(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private fillLayout()V
    .locals 6

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0904ca

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    const v2, 0x7f0904cc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    xor-int/lit8 v2, v0, -0x1

    or-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLocalServerConfig()Landroid/net/DhcpServerConfiguration;
    .locals 3

    const-string v1, "WifiApLanSettings"

    const-string v2, "getServerConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    iput-boolean v1, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    return-object v0

    :cond_0
    const-string v1, "static"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ipToInt(Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x4

    const/4 v4, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-ne v5, v6, :cond_0

    new-array v3, v6, [I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    :try_start_0
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    aget v4, v3, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v3, v5

    add-int/2addr v4, v5

    goto :goto_0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    and-int v3, v0, v2

    and-int v4, v1, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isValidSubnetMask(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const v6, 0xffff

    xor-int/2addr v6, v2

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const v3, 0x7fffffff

    const/4 v1, 0x0

    :goto_1
    const/16 v6, 0x1f

    if-ge v1, v6, :cond_5

    ushr-int/lit8 v2, v2, 0x1

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_3

    move v0, v4

    :goto_2
    if-eqz v0, :cond_4

    xor-int v6, v2, v3

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_2

    :cond_4
    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_0
.end method

.method private readServerSettings()V
    .locals 2

    const-string v0, "WifiApLanSettings"

    const-string v1, "readServerSettings 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.1"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.100"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.254"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/16 v1, 0x5a

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/16 v1, 0x64

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-boolean v0, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v0, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v0, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    return-void
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private saveAndFinishServerSettings()V
    .locals 9

    const/4 v8, 0x1

    const-string v5, "WifiApLanSettings"

    const-string v6, "saveAndFinishServerSettings"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/DhcpServerConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/4 v0, 0x0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v5, 0x3

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getRvfMode()I

    move-result v5

    if-nez v5, :cond_3

    if-lez v0, :cond_2

    const-string v5, "WifiApLanSettings"

    const-string v6, "saveAndFinishServerSettings : WifiAP enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    const-string v6, "SAMSUNG_HOTSPOT"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "DHCP_CHANGE"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v5, 0x258

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v8, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v6, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method private saveServerSettings()V
    .locals 9

    const/4 v7, 0x3

    const/4 v8, 0x1

    const-string v5, "WifiApLanSettings"

    const-string v6, "saveServerSettings"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/DhcpServerConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/4 v0, 0x0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v7, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getRvfMode()I

    move-result v5

    if-nez v5, :cond_3

    if-lez v0, :cond_1

    const-string v5, "WifiApLanSettings"

    const-string v6, "saveServerSettings : WifiAP enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    const-string v6, "SAMSUNG_HOTSPOT"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "DHCP_CHANGE"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v5, 0x258

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v8, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v6, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v5, "WifiApLanSettings"

    const-string v6, "saveServerSettings : Just saveDhcpServerConfiguration"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    goto :goto_2
.end method

.method private setLayout()V
    .locals 3

    const-string v2, "wifiap_local_ip_addrs"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    const-string v2, "wifiap_local_subnetmask"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    const-string v2, "wifiap_dhcp_enable"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "wifiap_dhcp_start_ip"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    const-string v2, "wifiap_dhcp_end_ip"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    const-string v2, "wifiap_dhcp_lease_time"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    const-string v2, "wifiap_dhcp_max_user"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->readServerSettings()V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->setLayout()V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->fillLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mIsTablet:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    const v1, 0x7f020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    const v1, 0x7f02016a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070115

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v6, 0x7f0904d7

    const v5, 0x7f0904d6

    const v4, 0x7f0904d5

    const v3, 0x7f0904d4

    const v2, 0x7f0904d3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0904d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f090450

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    const v0, 0x7f09044f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    const v1, 0x7f020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    const v1, 0x7f02016a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->saveServerSettings()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const v5, 0x7f0904ce

    const/4 v7, 0x2

    const v6, 0x7f090451

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v4, "wifiap_local_ip_addrs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, "wifiap_local_subnetmask"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isValidSubnetMask(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid Subnet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v4, "wifiap_dhcp_enable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    const-string v4, "wifiap_dhcp_start_ip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    :cond_a
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v4, "wifiap_dhcp_end_ip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    :cond_d
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v2, "wifiap_dhcp_lease_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    if-lt v2, v7, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    const v4, 0x7f0904cc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v2, v3

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v2, v2, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_10
    const-string v2, "wifiap_dhcp_max_user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move v2, v3

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v2, v2, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1
.end method
