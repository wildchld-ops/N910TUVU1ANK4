.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field private static final EDM_CLASS_NAME:Ljava/lang/String; = "android.app.enterprise.EnterpriseDeviceManager"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field private static final KNOX_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.EnterpriseKnoxManager"

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z


# instance fields
.field private mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private mApplicationPolicyCreated:Z

.field private mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private mBluetoothPolicyCreated:Z

.field private mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private mBrowserPolicyCreated:Z

.field private mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private mCertificatePolicyCreated:Z

.field private mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

.field private mClientCertificateManagerCreated:Z

.field private mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

.field private mDateTimePolicyCreated:Z

.field private mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private mDeviceAccountPolicyCreated:Z

.field private mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private mDeviceInventoryCreated:Z

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirewallPolicyCreated:Z

.field private mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private mKioskModeCreated:Z

.field private mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

.field private mKnoxCustomManagerCreated:Z

.field private mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

.field private mLocationPolicyCreated:Z

.field private mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

.field private mMiscPolicyCreated:Z

.field private mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private mPasswordPolicyCreated:Z

.field private mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private mPhonePolicyCreated:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mRestrictionPolicyCreated:Z

.field private mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private mRoamingPolicyCreated:Z

.field private mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

.field private mSmartCardAccessPolicyCreated:Z

.field private mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

.field private mTimaKeystoreCreated:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

.field private mWifiPolicyCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    const-string v3, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createKnox(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    const-string v3, "com.sec.enterprise.knox.EnterpriseKnoxManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v4

    goto :goto_0
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .locals 2

    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/ApplicationPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/BluetoothPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/BrowserPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/ClientCertificateManager;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/ClientCertificateManager;

    invoke-direct {v0}, Landroid/sec/enterprise/ClientCertificateManager;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/DateTimePolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/DateTimePolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/DateTimePolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/DeviceInventory;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v0}, Landroid/sec/enterprise/DeviceInventory;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/FirewallPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/FirewallPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/FirewallPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v0}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    if-nez v0, :cond_1

    const-class v1, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    invoke-direct {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocationPolicy()Landroid/sec/enterprise/LocationPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/LocationPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/LocationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/LocationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMiscPolicy()Landroid/sec/enterprise/general/MiscPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/general/MiscPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/general/MiscPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/general/MiscPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/PasswordPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/RestrictionPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/RoamingPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSmartCardAccessPolicy()Landroid/sec/enterprise/SmartCardAccessPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/SmartCardAccessPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/SmartCardAccessPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/SmartCardAccessPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/TimaKeystore;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/TimaKeystore;

    invoke-direct {v0}, Landroid/sec/enterprise/TimaKeystore;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .locals 2

    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/WifiPolicy;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/WifiPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
