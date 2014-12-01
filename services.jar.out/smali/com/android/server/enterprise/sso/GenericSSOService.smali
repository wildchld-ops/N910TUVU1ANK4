.class public Lcom/android/server/enterprise/sso/GenericSSOService;
.super Landroid/app/enterprise/sso/IGenericSSO$Stub;
.source "GenericSSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;,
        Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;,
        Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;,
        Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final GENERIC_SSO_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYSTORE_PASSWORD:Ljava/lang/String; = "password_for_secret_key"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEYWORD_CUSTOMERBRAND:Ljava/lang/String; = "customerbrand"

.field private static final KEYWORD_DEVICE_CERTIFICATE:Ljava/lang/String; = "devicecertificate"

.field private static final KEYWORD_SSOPROVIDER:Ljava/lang/String; = "ssoprovider"

.field private static final KEYWORD_TOKEN_APPPKGNAME:Ljava/lang/String; = "packagename"

.field private static final KEYWORD_TOKEN_CACHE:Ljava/lang/String; = "apptoken"

.field private static final KEYWORD_USER_CERTIFICATE:Ljava/lang/String; = "usercertificate"

.field private static final KEYWORD_VENDORCONFIG:Ljava/lang/String; = "vendorconfigs"

.field private static final KEYWORD_WHITELISTPACKAGE:Ljava/lang/String; = "whitelistpackage"

.field private static final KEY_STORE_CERT_ALIAS:Ljava/lang/String; = "KnoxSSOKey"

.field private static final KNOXSSO_CONF_DATA_FILENAME:Ljava/lang/String; = "ssoconfig.xml"

.field private static final KNOXSSO_DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final KNOXSSO_SECRETKEY_FILE:Ljava/lang/String; = "KnoxSSO_SCKF"

.field private static final KNOXSSO_TMP_CONF_DATA_FILENAME:Ljava/lang/String; = "tmpssoconfig.xml"

.field private static final KNOXSSO_TOKEN_FILENAME:Ljava/lang/String; = "ssotoken.xml"

.field private static final KNOXSSO_USERX_SSOCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NTP_CONNECTION_TIMEOUT:J = 0x7d0L

.field private static final PKGCERT:I = 0x1

.field private static final PKGNAME:I = 0x0

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "GenericSSOService"

.field private static final TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static final TOKEN:I = 0x2

.field private static final UNREGISTER:I = 0x1

.field private static final USERINFO:I = 0x3

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

.field private static key:Ljava/security/Key;

.field private static keystore:Ljava/security/KeyStore;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static requestConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

.field private static tokenConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private initElapsedTime:J

.field private initUTCTime:J

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, -0x2710

    invoke-direct {p0}, Landroid/app/enterprise/sso/IGenericSSO$Stub;-><init>()V

    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In GenericSSOService: registerReceiverForKeyClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->registerReceiverForKeyClear()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/sso/GenericSSOService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/enterprise/sso/GenericSSOService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide p1
.end method

.method static synthetic access$1500()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$202(Ljava/security/Key;)Ljava/security/Key;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    return-object p0
.end method

.method static synthetic access$302(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 0

    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method private addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 11

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1100(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    if-nez v6, :cond_1

    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In addAppTokenToSecureStorageForUser: the token for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v9, "apptoken"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v8, "packagename"

    invoke-interface {v6, v8, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    const-string/jumbo v8, "protocoltype"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0, v0, v6, v3, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "GenericSSOService"

    const-string v9, "In addAppTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v8, -0x1

    :goto_2
    return v8

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In addAppTokenToSecureStorageForUser: error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addTokenToGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is null or empty string"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is authenticator packagename, we add share token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0

    :cond_4
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is not application packagename, we add app token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method private addTokenToSecureStorage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 2

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v1

    return v1
.end method

.method private addTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 13

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_2

    :cond_0
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: token to save is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v10, -0x3

    :goto_0
    return v10

    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    if-nez v8, :cond_4

    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: the usercert doesn\'t exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v11, "usercertificate"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$900(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-nez v1, :cond_6

    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: the deviceCert doesn\'t exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v11, "devicecertificate"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1100(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    if-nez v7, :cond_8

    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In addTokenToSecureStorageForUser: the token for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doesn\'t exist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v11, "apptoken"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v10, "packagename"

    invoke-interface {v7, v10, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    const-string/jumbo v10, "protocoltype"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    const-string v10, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_a
    invoke-direct {p0, v0, v8, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_b
    :try_start_1
    const-string v10, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    invoke-direct {p0, v0, v1, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: Exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_d
    :try_start_2
    invoke-direct {p0, v0, v7, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I
    .locals 12

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    if-nez v7, :cond_1

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: the usercert doesn\'t exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "usercertificate"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$900(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-nez v1, :cond_3

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: the deviceCert doesn\'t exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v10, "devicecertificate"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    invoke-direct {p0, v0, v7, v4, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: NullPointerException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v9, -0x1

    :goto_2
    return v9

    :cond_6
    :try_start_1
    const-string v9, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_7
    invoke-direct {p0, v0, v1, v4, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In addUserAndDeviceCertificates: error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v9, 0x0

    goto :goto_2
.end method

.method private bindToService(ILandroid/content/Intent;)V
    .locals 8

    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;-><init>(I)V

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In bindToService: The SSO Service is already bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: Binding to the service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p2, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    :try_start_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x4e20

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: CoutnDownLatch return false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: InterruptedException"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: Fail to bind to sso service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In callingAppIsPermitted: packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In callingAppIsPermitted: Bundle configData is null or empty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not whitelisted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1

    :cond_3
    const-string v3, "clientpackagesignature"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "clientpackagesignature"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In callingAppIsPermitted: Fail to pass the callingApp cert check: (ondevice vs config) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "clientpackagesignature"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private cleanUpSSOConnections(I)V
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private clearConfigAndTokenForAuthenticator(I)I
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In clearConfigAndTokenForAuthenticator: Fail to clear records remotely"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v3, -0x10

    :goto_0
    return v3

    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "GenericSSOService"

    const-string v5, "clearConfigAndTokenForAuthenticator: SecurityException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "GenericSSOService"

    const-string v5, "clearConfigAndTokenForAuthenticator: Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private clearUserCertAndAppToken(Landroid/app/enterprise/ContextInfo;)I
    .locals 10

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhiteListPackages(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In clearUserCertAndAppToken: Processing packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v6, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "GenericSSOService"

    const-string v8, "In clearUserCertAndAppToken: NullPointerException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v7, -0x1

    :goto_2
    return v7

    :cond_1
    :try_start_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v7, "GenericSSOService"

    const-string v8, "In clearUserCertAndAppToken: Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createSecretKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    const/16 v2, 0x100

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: Key alias or token to encrypt is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v7

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    instance-of v6, v6, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_5

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v7

    goto :goto_0

    :cond_5
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: Provider is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_9

    array-length v6, v1

    add-int/lit8 v4, v6, -0x10

    const/4 v8, 0x2

    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    check-cast v6, Ljavax/crypto/SecretKey;

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v10, 0x10

    invoke-direct {v9, v1, v4, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v0, v8, v6, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF_8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: Decrypted output is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: the length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: NoSuchAlgorithmException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    move-object v2, v7

    goto/16 :goto_0

    :cond_9
    :try_start_1
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: cipher is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_9

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: KeyStoreException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: InvalidKeyException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: NoSuchPaddingException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: IllegalBlockSizeException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: BadPaddingException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_6
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: UnrecoverableKeyException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_7
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: IOException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_8
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: InvalidAlgorithmParameterException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_9
    move-exception v3

    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: GeneralSecurityException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private deleteAppTokenForUser(ILjava/lang/String;)I
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "packageName is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, -0x3

    :goto_0
    return v3

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1100(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: NullPointerException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v3, -0x1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private deleteUserAndDeviceCertForUser(I)I
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: userCertNode is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$900(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: deviceCertNode is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_2
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: userCertNode is removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: deviceCertNode is removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: Key alias or token to encrypt is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v10

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    :try_start_0
    const-string v9, "UTF_8"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    instance-of v9, v9, Ljavax/crypto/SecretKey;

    if-nez v9, :cond_5

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v10

    goto :goto_0

    :cond_5
    const/16 v9, 0x10

    new-array v5, v9, [B

    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: Provider is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v1, :cond_8

    const/4 v11, 0x1

    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    check-cast v9, Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v11, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    array-length v9, v8

    array-length v11, v5

    add-int/2addr v9, v11

    new-array v0, v9, [B

    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v8, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    array-length v11, v8

    array-length v12, v5

    invoke-static {v5, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    const-string v11, "UTF_8"

    invoke-direct {v2, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: Encrypted output "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: the length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: InvalidAlgorithmParameterException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    move-object v2, v10

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: InvalidKeyException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchProviderException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchAlgorithmException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchPaddingException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: IllegalBlockSizeException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_6
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: BadPaddingException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_7
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: ProviderException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_8
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: KeyStoreException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_9
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: UnrecoverableKeyException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_a
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: IOException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_b
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: Exception"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v6

    :goto_0
    return-object v5

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_4
    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "GenericSSOService"

    const-string v7, "In ExistedNode: NullPointerException"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v5, v6

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "GenericSSOService"

    const-string v7, "In ExistedNode: Exception"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In fillChildNodes: parameters are not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_1
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the original value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_6

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToSecureStorageForUser: encrypted token value is null, failed to addTokenCacheConfig"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "GenericSSOService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "value"

    invoke-interface {v1, v3, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private getAccessTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In getAccessTokenByProtocolType: token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const-string v2, "OAUTH_RESPONSE_ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    const-string v2, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12

    const/4 v8, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: appPkgName is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v6, v8

    :goto_0
    return-object v6

    :cond_1
    :try_start_0
    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v3, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1100(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    if-nez v7, :cond_3

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In getAppTokenFromSecureStorageForUser: the token for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v8

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "protocoltype"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/sso/TokenInfo;->setProtocolType(I)V

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const-string/jumbo v9, "value"

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-direct {p0, v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v6, v8

    goto/16 :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v4, v5

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getConfigData(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method private getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 12

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v10, "clientpackagename"

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "clientpackagename"

    invoke-virtual {v8, v10, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "clientpackagesignature"

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v10, "clientpackagesignature"

    const-string v11, "clientpackagesignature"

    invoke-direct {p0, v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-direct {p0, v2, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForPkgName: NullPointerException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForPkgName: Exception"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getConfigDataForSSOVendor(I)Landroid/os/Bundle;
    .locals 12

    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForSSOVendor: start getConfigDataForSSOVendor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    const-string/jumbo v10, "servicepackagename"

    const-string/jumbo v11, "servicepackagename"

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "servicepackagesignature"

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "servicepackagesignature"

    const-string/jumbo v11, "servicepackagesignature"

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vendorconfigs"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    const-string/jumbo v10, "value"

    invoke-direct {p0, v2, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-direct {p0, v2, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v7, v8

    :goto_1
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForSSOVendor: Exception"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v7

    :cond_4
    move-object v7, v8

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private getDeviceCertificate(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10

    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$900(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    return-object v6
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExpirationTimeByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string/jumbo v4, "token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const-string v2, "OAUTH_RESPONSE_EXPIRES_IN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    const-string v2, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GenericSSOService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    return-object v2
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keystore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getInstanceOfKeyStore: KeyStore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initializaiton failed (Android API level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: KeyStoreException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v7, "KnoxSSOKey"

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Key entry is not available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    const-string v7, "CN=%s, OU=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "KnoxSSOKey"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string v8, "KnoxSSOKey"

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v5

    const-string v7, "RSA"

    const-string v8, "AndroidKeyStore"

    invoke-static {v7, v8}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key entry is generated for cert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v7, "KnoxSSOKey"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    new-instance v7, Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    :cond_3
    :try_start_1
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 17

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "GenericSSOService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In getPackageCertForPkgname: User id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v6

    const/16 v14, 0x40

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v6, v0, v14, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-nez v9, :cond_2

    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "GenericSSOService"

    const-string v15, "in getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v14, 0x0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v14

    :cond_2
    :try_start_1
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object v2, v11

    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v10, v2, v4

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :cond_3
    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v14, v8

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    :catch_1
    move-exception v3

    :try_start_3
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: Exception"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private getPackageInfoForPid(II)Ljava/lang/String;
    .locals 2

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPackageNameForPid(I)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne p1, v8, :cond_2

    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getPackageNameForPid:  pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " package name = android"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v5, "android"

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    const/4 v5, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v0, v8

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v6, v0

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_3

    iget-object v5, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getPackageNameForPid:  pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v8, "GenericSSOService"

    const-string v10, "In getPackageNameForPid: null pointer exception in getPackageNameForPid"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v8, "GenericSSOService"

    const-string v10, "In getPackageNameForPid: Exception in getPackageNameForPid"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    goto :goto_0
.end method

.method private getRefreshTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In getRefreshTokenByProtocolType: token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "OAUTH_RESPONSE_REFRESH_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestConfigFilePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 3

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getSSOConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getSSOService: SSO service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->access$700(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".genericssoconnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getSSOServiceIntent: action is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In getSSOServiceIntent: NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "GenericSSOService"

    const-string v3, "In getSSOServiceIntent: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private final declared-synchronized getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v5

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    if-nez v5, :cond_7

    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v3

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->writeKeyData(Ljava/io/File;[B)V

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->readKeyData(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "GenericSSOService"

    const-string v6, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/users/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KnoxSSO_SCKF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getTIMAStatus()I
    .locals 9

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    if-nez v6, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string v6, "3.0"

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :cond_1
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In getTIMAStatus: getTIMAStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v6, "2.0"

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    invoke-interface {v7}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In getTIMAStatus: exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private getTempConfigFilePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tmpssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private getTokenByRefreshToken(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 13

    const/4 v12, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_2

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v10, v12

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    invoke-direct {p0, v11, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    if-nez v9, :cond_4

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v10, v12

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireTokenByRefreshToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v10

    if-nez v10, :cond_1

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: Fail to acquire valid token from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    move-object v10, v12

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: NullPointerException"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v10, v12

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: RemoteException"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: Exception"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getTokenConfigFilePath(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssotoken.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .locals 3

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12

    const/4 v11, 0x0

    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_2

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: cannot get SSO Service intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v10, v11

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    if-nez v9, :cond_4

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: sso service is not ready to use"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v10, v11

    goto :goto_0

    :cond_4
    const-string v1, "clientpackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v10

    if-nez v10, :cond_1

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: Fail to acquire valid token from sso service"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    move-object v10, v11

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: NullPointerException"

    invoke-static {v1, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v10, v11

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: RemoteException"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: Exception"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is authenticator packagename, we return share token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0

    :cond_4
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is not application packagename, we return app token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private getTokenFromLocalCache(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In getTokenFromLocalCache: get Token from cache for user Id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v7, "clientpackagename"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAccessTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getExpirationTimeByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_0
    return-object v4

    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "GenericSSOService"

    const-string v8, "In getTokenFromLocalCache: token in cache expired, so getTokenByRefreshToken is called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenByRefreshToken(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "GenericSSOService"

    const-string v8, "In getTokenFromLocalCache: Exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12

    const/4 v11, 0x1

    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_1

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$900(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_3

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v11, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v6, 0x0

    :goto_2
    return-object v6

    :cond_4
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method private getUserCertificate(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10

    new-instance v5, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v5}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    return-object v5
.end method

.method private getUserId()I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    const-string v1, "In getWhitelistAppNode: In getWhitelistAppNode: solution node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getWhitelistAppNode: In getWhitelistAppNode: child node whitelistpackage is searched for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string/jumbo v3, "servicepackagename"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "whitelistpackage"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 10

    const-wide/16 v8, 0x0

    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setInitTime()V

    :cond_1
    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    add-long v0, v6, v8

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "In hasTokenExpired: SystemClock.elapsedRealtime()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "In hasTokenExpired: initElapsedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "In hasTokenExpired: initUTCTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentUTCtime vs expireOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v6, v0, v3

    if-lez v6, :cond_7

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_6

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: the token obtained has expired"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return v5

    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    :cond_8
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: the token obtained is still valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initKeyStore()V
    .locals 4

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTIMAStatus()I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "TIMAKeyStore"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    :cond_1
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    if-nez v1, :cond_2

    const-string v1, "AndroidKeyStore"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    :cond_2
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    if-nez v1, :cond_4

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    const-string v2, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In initKeyStore: Keystore Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRequestConfigDoc(I)V
    .locals 12

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    :cond_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initRequestConfigDoc: ssoconfig.xml doesn\'t exist for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", an empty config file is created"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v8, "configuration"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v8, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v8, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    :goto_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is loaded for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v9, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_2
    const-string v8, "GenericSSOService"

    const-string v9, "In getConfigDataForPkgName: IOException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_3
    const-string v8, "GenericSSOService"

    const-string v9, "In getConfigDataForPkgName: ParserConfigurationException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_4
    const-string v8, "GenericSSOService"

    const-string v9, "In getConfigDataForPkgName: SAXException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v6, v7

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v6, v7

    goto :goto_2
.end method

.method private initTokenConfigDoc(I)V
    .locals 12

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    :cond_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initTokenConfigDoc: ssotoken.xml doesn\'t exist for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", an empty config file is created"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string/jumbo v8, "ssotoken"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v8, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v8, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    :goto_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initTokenConfigDoc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is loaded for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v9, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_2
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: IOException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_3
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: ParserConfigurationException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_4
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: SAXException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v6, v7

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v6, v7

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v6, v7

    goto :goto_2
.end method

.method private installedServiceIsPermitted(ILandroid/os/Bundle;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "servicepackagename"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "servicepackagesignature"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GenericSSOService"

    const-string v7, "In installedServiceIsPermitted: service package cert is matched between configured and installed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "GenericSSOService"

    const-string v6, "In installedServiceIsPermitted: Exception"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    goto :goto_0

    :cond_2
    :try_start_1
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In installedServiceIsPermitted: Fail to pass the servicePkg cert check: (ondevice vs config) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private isCallingMDMMatch(II)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GenericSSOService"

    const-string v7, "In isCallingMDMMatch: the enrolledVendor is null, return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v6, "mdmuid"

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_3

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: the mDmUidNode is null, return false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_4
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GenericSSOService"

    const-string v7, "In isCallingMDMMatch: the configDoc is null, return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: NullPointerException"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network type detected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadKey(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In loadKey: loadkey() failed, because keystore is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    const-string/jumbo v4, "password_for_secret_key"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: keystore doesn\'t contain key with alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", so a new one is stored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey got from TIMAKeystore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    const-string/jumbo v3, "password_for_secret_key"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidkeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->key:Ljava/security/Key;

    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private nextSessionId()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 10

    const/4 v6, -0x1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: cannot get SSO Service intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v6

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v5

    if-nez v5, :cond_4

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: sso service is not ready to use"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    invoke-interface {v5, p3}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    move-result v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    if-nez v3, :cond_5

    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " successfully complete this request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: RemoteException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move v3, v6

    goto :goto_0

    :cond_5
    :try_start_1
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fails to complete this request with error code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: Exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private reAuthenInAuthenticator(I)I
    .locals 14

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "servicepackagename"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "servicepackagename"

    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string/jumbo v12, "servicepackagesignature"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "servicepackagesignature"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "servicepackagesignature"

    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v12

    if-nez v12, :cond_2

    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: Fail to pass the service package cert check"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v12, -0xd

    :goto_0
    return v12

    :cond_2
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_4

    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: cannot get SSO Service intent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v12, -0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    if-nez v9, :cond_6

    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: sso service is not ready to use"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v12, -0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Node;

    const-string v13, "clientpackagename"

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v9, v7}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->forceAuthenticate(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: NullPointerException"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v12, -0x1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: RemoteException"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In readKeyData: Reading key data from a file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v0, v4, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-object v4
.end method

.method private registerReceiverForKeyClear()V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;-><init>()V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 10

    const/4 v3, 0x0

    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v4, p2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :try_start_1
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    :goto_0
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    :catch_1
    move-exception v0

    :goto_4
    :try_start_5
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_5
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_6
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: IOException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v4

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v3, v4

    goto :goto_2
.end method

.method private setInitTime()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x7d0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v3, "In setInitTime: CountDownLatch return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: UTC time when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: elapsedRealtime() when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v1

    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopAuthenticatorApplication(Ljava/lang/String;I)V
    .locals 13

    if-nez p1, :cond_1

    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "GenericSSOService"

    const-string v11, "in stopAuthenticatorApplication: packageName is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v4, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/app/ActivityManager;->removeTask(II)Z

    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "the task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "has been removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not stop app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 7

    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: cannot get SSO Service intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: sso service is not ready to use"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: NullPointerException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v3, p3}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->unregister(Landroid/os/Bundle;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterByAuthenticator(I)I
    .locals 17

    const/4 v10, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-nez v12, :cond_0

    move v15, v10

    :goto_0
    return v15

    :cond_0
    const-string/jumbo v15, "servicepackagename"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    const-string/jumbo v15, "servicepackagesignature"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_1

    const-string/jumbo v15, "servicepackagesignature"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "servicepackagename"

    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "servicepackagesignature"

    invoke-virtual {v4, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_3

    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_2

    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: Fail to pass the service package cert check"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v15, -0xd

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_4

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Node;

    const-string v16, "clientpackagename"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v14, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v10

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v15, v10

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: NullPointerException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, -0x1

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, -0x1

    goto :goto_1
.end method

.method private unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x4

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "AES"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .locals 4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In updateCacheAndFile: updated sso config doc is updated in requestConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso request config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .locals 4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In updateCacheAndFile: updated sso token doc is updated in tokenConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso token config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private vendorPermissionCheck(ILjava/lang/String;)Z
    .locals 9

    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string/jumbo v7, "servicepackagename"

    invoke-direct {p0, v3, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "servicepackagesignature"

    invoke-direct {p0, v3, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string/jumbo v7, "servicepackagesignature"

    invoke-direct {p0, v3, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In vendorPermissionCheck: exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x3

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static writeKeyData(Ljava/io/File;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In writeKeyData: Writing key data to a file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method protected acquireUserInfo(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/UserInfo;
    .locals 12

    const/4 v11, 0x0

    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_2

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "GenericSSOService"

    const-string v2, "In getUserInfo: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v10, v11

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    if-nez v9, :cond_4

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "GenericSSOService"

    const-string v2, "In getUserInfo: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v10, v11

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireUserInfo(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object v10

    if-nez v10, :cond_1

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "GenericSSOService"

    const-string v2, "In getUserInfo: Fail to get valid UserInfo from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    move-object v10, v11

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v1, "GenericSSOService"

    const-string v2, "In getUserInfo: null pointer exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v10, v11

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v2, "In getUserInfo: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v2, "In getUserInfo: Exception in getToken"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public addAppTokenToGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In addAppTokenToGenericSSO: appPkgName is null or empty string or token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, -0x3

    :goto_0
    return v3

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In addAppTokenToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method public addUserAndDeviceCertToGenericSSO(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In addUserAndDeviceCertToGenericSSO: token is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, -0x3

    :goto_0
    return v3

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "GenericSSOService"

    const-string v4, "In addUserAndDeviceCertToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method public addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;)I"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackages: cxtInfo is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v19, -0x3

    :goto_0
    return v19

    :cond_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v19

    if-nez v19, :cond_3

    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_2

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackages: MDM uid is not matched"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v19, -0xa

    goto :goto_0

    :cond_3
    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_4

    const-string v19, "GenericSSOService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "In addWhiteListPackage: UserID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_6

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: Invalid Parameters."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v19, -0x3

    goto :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_9

    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_8

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: No SSO Vendors have been enrolled."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v19, -0x6

    goto :goto_0

    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v16

    const/4 v3, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/enterprise/sso/WhiteListPackage;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v15}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_c

    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_b

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: Invalid Parameters. Package Name or Certificate is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v19, -0x3

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v15}, Landroid/app/enterprise/sso/WhiteListPackage;->getConfigMap()Ljava/util/Map;

    move-result-object v5

    const-string v19, "clientpackagename"

    invoke-virtual {v15}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v18

    if-eqz v18, :cond_e

    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_a

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: the given whitelistpkg has already been registered"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: NullPointerException."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_d

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: Returning Fail."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v19, -0x1

    goto/16 :goto_0

    :cond_e
    :try_start_1
    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_f

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: the package hasn\'t been whitelisted"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v19, "whitelistpackage"

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string v19, "clientpackagename"

    invoke-virtual {v15}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/app/enterprise/sso/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_12

    const-string v19, "clientpackagesignature"

    invoke-virtual {v15}, Landroid/app/enterprise/sso/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_3
    if-eqz v5, :cond_13

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_11

    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    const-string/jumbo v20, "value"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_11

    const-string v20, "GenericSSOService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "In addWhiteListPackage:  <"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "> parameter for - packageName "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, " is added"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v8

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: Exception."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_12
    :try_start_2
    sget-boolean v19, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v19, :cond_10

    const-string v19, "GenericSSOService"

    const-string v20, "In addWhiteListPackage: the package signature hasn\'t been specified"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method public configureSSOByFile(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 31

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_0

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: cxtInfo is null"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v28, -0x3

    :goto_0
    return v28

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v28

    if-nez v28, :cond_3

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_2

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: MDM uid is not matched"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v28, -0xa

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v28, v0

    if-nez v28, :cond_6

    :cond_4
    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_5

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: confContent is null or is empty"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v28, -0x3

    goto :goto_0

    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v21

    const/4 v9, 0x0

    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v28

    const-string/jumbo v29, "servicepackagename"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTempConfigFilePath(I)Ljava/lang/String;

    move-result-object v25

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v28, Ljava/io/FileOutputStream;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->normalize()V

    new-instance v24, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static/range {v24 .. v24}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    const-string v28, "mdmuid"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v28, "servicepackagename"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v28, "servicepackagesignature"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V
    invoke-static/range {v24 .. v24}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_8

    const-string v28, "GenericSSOService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "In configureSSOByFile: tmp sso config doc is updated in "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_9

    const-string v28, "GenericSSOService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "In configureSSOByFile: updated sso config doc is saved at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " for userId "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    const-string v28, "application_policy"

    invoke-static/range {v28 .. v28}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v3, :cond_d

    move/from16 v0, v26

    invoke-virtual {v3, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v28

    if-nez v28, :cond_b

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_a

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: Authenticator not installed"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v28, -0xc

    goto/16 :goto_0

    :cond_b
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_d

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_c

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: Authenticator signature is not matched"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v28, -0xd

    goto/16 :goto_0

    :cond_d
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_f

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_f

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_e

    const-string v28, "GenericSSOService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "In configureSSOByFile: there\'s already one sso vendor enrolled for userId "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", please unenroll the existing one first"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/16 v28, -0x9

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_10
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v20

    if-nez v20, :cond_12

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_11

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: tempConfigFile failed to be saved to ssoconfig.xml"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/16 v28, -0x1

    goto/16 :goto_0

    :cond_12
    sget-object v28, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v19

    if-eqz v19, :cond_14

    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_13

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: failed because of pushAuthenticatorConfig()"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_13
    const/16 v28, -0x10

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: File not found exception in configureSSOByFile"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v28, -0x5

    goto/16 :goto_0

    :catch_1
    move-exception v13

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: IO exception in configureSSOByFile"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v28, -0x1

    goto/16 :goto_0

    :catch_2
    move-exception v13

    const-string v28, "GenericSSOService"

    const-string v29, "In configureSSOByFile: Exception"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v28, -0x1

    goto/16 :goto_0

    :cond_14
    const/16 v28, 0x0

    goto/16 :goto_0
.end method

.method public deleteWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v9, -0x3

    const/4 v10, -0x6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: cxtInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v11

    if-nez v11, :cond_3

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "GenericSSOService"

    const-string v10, "In deleteWhiteListPackages: MDM uid is not matched"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v9, -0xa

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackage: Invalid Parameters."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "GenericSSOService"

    const-string v11, "In deletesWhiteListPackage: No SSO Vendors have been enrolled."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v9, v10

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_9

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "GenericSSOService"

    const-string/jumbo v11, "this sso vendor is not registered"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v9, v10

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v9, "clientpackagename"

    invoke-direct {p0, v0, v9, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_b

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "GenericSSOService"

    const-string/jumbo v10, "the package hasn\'t been whitelisted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v9, "GenericSSOService"

    const-string v10, "In deleteWhiteListPackage: NullPointerException."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v9, -0x1

    goto/16 :goto_0

    :cond_b
    :try_start_1
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_c

    const-string v9, "GenericSSOService"

    const-string v10, "package name is found in the whitelist of the given sso ssolution service"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-interface {v6, v8}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_a

    const-string v9, "GenericSSOService"

    const-string v10, "package name is removed from the whitelist of the given sso ssolution service"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v9, "GenericSSOService"

    const-string v10, "In deleteWhiteListPackage: Exception."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_d
    :try_start_2
    invoke-direct {p0, v7, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 27

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_0

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: cxtInfo is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v24, -0x3

    :goto_0
    return v24

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_2

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: there\'s already one sso vendor enrolled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v24, -0x9

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_4

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: parameter is null or empty"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v24, -0x3

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const-string v24, "application_policy"

    invoke-static/range {v24 .. v24}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v4, :cond_9

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v24

    if-nez v24, :cond_7

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_6

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: Authenticator not installed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v24, -0xc

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_9

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_8

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: Authenticator signature is not matched"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v24, -0xd

    goto/16 :goto_0

    :cond_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_0
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const/16 v18, 0x0

    if-eqz v9, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v24

    if-nez v24, :cond_b

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_a

    const-string v24, "GenericSSOService"

    const-string v25, "In unenrollSSOVendor: MDM uid is not matched"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v24, -0xa

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_f

    invoke-interface {v5, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "whitelistpackage"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_d
    const-string/jumbo v24, "ssoprovider"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_12

    const-string/jumbo v24, "servicepackagesignature"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_2
    const-string/jumbo v24, "servicepackagename"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "mdmuid"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v24

    if-nez v24, :cond_14

    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    const-string/jumbo v25, "vendorconfigs"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_10
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_10

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    if-nez v19, :cond_11

    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    :cond_11
    const-string/jumbo v24, "value"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_10

    const-string v24, "GenericSSOService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "In enrollSSOVendor:  <"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "> parameter for - packageName "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is added"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    :catch_0
    move-exception v8

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: NullPointerException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/16 v24, -0x1

    goto/16 :goto_0

    :cond_12
    :try_start_1
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_e

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: Authenticator signature is not specified"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v8

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: DOMException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_13
    if-nez v15, :cond_17

    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_14
    :goto_5
    if-nez v15, :cond_15

    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_15
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v20

    if-eqz v20, :cond_18

    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_16

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: failed because of pushAuthenticatorConfig()"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/16 v24, -0x10

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v8

    const-string v24, "GenericSSOService"

    const-string v25, "In enrollSSOVendor: Exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_18
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method public forceAuthenticate(Landroid/app/enterprise/ContextInfo;)I
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GenericSSOService"

    const-string v7, "In forceAuthenticate: cxtInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, -0x3

    :goto_0
    return v4

    :cond_1
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "GenericSSOService"

    const-string v7, "In forceAuthenticate: MDM uid is not matched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v4, -0xa

    goto :goto_0

    :cond_3
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In forceAuthenticate: UserID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->reAuthenInAuthenticator(I)I

    move-result v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_6

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "GenericSSOService"

    const-string v7, "In forceAuthenticate: Fail to clear authenticator\'s records"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v4, -0x10

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearUserCertAndAppToken(Landroid/app/enterprise/ContextInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In forceAuthenticate: Exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getAppTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In getAppTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    const-string v5, "In getAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method public getCustomerBrandInfo(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .locals 15

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    const/4 v13, 0x0

    invoke-direct {p0, v10, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v12, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-boolean v13, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "GenericSSOService"

    const-string v14, "In getCustomerBrandInfo: authenticator is not permitted to call this API"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v11

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "customerbrand"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    const-string/jumbo v13, "value"

    invoke-direct {p0, v3, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "value"

    invoke-direct {p0, v3, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v13, "GenericSSOService"

    const-string v14, "In getCustomerBrandInfo: Exception"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1000(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getToken(Landroid/app/enterprise/ContextInfo;ZLandroid/app/enterprise/sso/IGenericSSOCallback;)V
    .locals 14

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Checking networking connection - Failed."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/16 v11, -0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_3

    sget-boolean v11, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: the SSO Vendor is not registered"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_0

    const/4 v11, -0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: null pointer exception in getToken"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/4 v11, 0x0

    invoke-direct {p0, v7, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    sget-boolean v11, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In getToken: cannot find the package name based on the pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p3, :cond_0

    const/4 v11, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Exception in getToken"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v7, v6, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v11

    if-nez v11, :cond_7

    sget-boolean v11, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In getToken: the callingApp "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "is not permitted"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p3, :cond_0

    const/4 v11, -0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz p2, :cond_8

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromLocalCache(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v9

    if-eqz v9, :cond_8

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/app/enterprise/sso/IGenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v11

    if-nez v11, :cond_a

    sget-boolean v11, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Fail to pass the service package cert check"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz p3, :cond_0

    const/16 v11, -0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput v10, v4, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p3

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public getUserAndDeviceCertFromGenericSSO(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In getUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method public getUserInfo(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/IGenericSSOCallback;)V
    .locals 11

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Checking networking connection - Failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/16 v8, -0xf

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_3

    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "GenericSSOService"

    const-string v9, "In getToken: the SSO Vendor is not registered"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p2, :cond_0

    const/4 v8, -0x6

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: exception in getUserInfo"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v5, v4, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getUserInfo: the callingApp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is not permitted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p2, :cond_0

    const/4 v8, -0x7

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_7

    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Fail to pass the service package cert check"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p2, :cond_0

    const/16 v8, -0xd

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v7, v3, Landroid/os/Message;->arg1:I

    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getWhiteListPackages(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v8

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_1

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "whitelistpackage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "clientpackagename"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: NullPointerException."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object v5, v8

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: Exception."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 7

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAdminRemoved: Admin removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "GenericSSOService"

    const-string v5, "onAdminRemoved: Fail to clear records remotely"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    if-nez v3, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "GenericSSOService"

    const-string v5, "onAdminRemoved: SecurityException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "GenericSSOService"

    const-string v5, "onAdminRemoved: Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 3

    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre Admin removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public processWebServiceRequest(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/WebServiceRequest;)Landroid/app/enterprise/sso/WebServiceResponse;
    .locals 14

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Checking networking connection - Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v13, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v9, v8, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In processWebServiceRequest: the callingApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not permitted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v13, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v13, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Fail to pass the service package cert check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-nez v10, :cond_7

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    invoke-direct {p0, v13, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    invoke-direct {p0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v12

    if-nez v12, :cond_9

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    invoke-interface {v12, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireWebService(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/WebServiceResponse;

    move-result-object v11

    if-nez v11, :cond_0

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Fail to acquire valid service response from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: null pointer exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Exception in getToken"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public removeAppTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In removeAppTokenFromGenericSSO: appPkgName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "GenericSSOService"

    const-string v4, "In removeAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public removeUserAndDeviceCertFromGenericSSO(Landroid/app/enterprise/ContextInfo;)I
    .locals 5

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "GenericSSOService"

    const-string v4, "In removeUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteUserAndDeviceCertForUser(I)I

    move-result v3

    goto :goto_0
.end method

.method public setCustomerBrandInfo(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)I
    .locals 17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "GenericSSOService"

    const-string v15, "In setCustomerBrandInfo: cxtInfo is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, -0x3

    :goto_0
    return v14

    :cond_1
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v14

    if-eqz v14, :cond_3

    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "GenericSSOService"

    const-string v15, "In setCustomizedBrandingInfo: invalid parameters"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v14, -0x3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v14

    if-nez v14, :cond_5

    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_4

    const-string v14, "GenericSSOService"

    const-string v15, "In setCustomerBrandInfo: MDM uid is not matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v14, -0xa

    goto :goto_0

    :cond_5
    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_6

    const-string v14, "GenericSSOService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In setCustomizedBrandingInfo: UserID = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_8

    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_7

    const-string v14, "GenericSSOService"

    const-string v15, "In setCustomizedBrandingInfo: No SSO Vendors have been enrolled."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v14, -0x6

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v10

    iget-object v4, v3, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const/4 v2, 0x0

    const-string v14, "customerbrand"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-nez v2, :cond_9

    const-string v14, "customerbrand"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    if-eqz v13, :cond_a

    array-length v14, v13

    if-lez v14, :cond_a

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    if-nez v9, :cond_b

    invoke-interface {v4, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    :cond_b
    new-instance v11, Ljava/lang/String;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v14

    const-string v15, "UTF_8"

    invoke-direct {v11, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v14, "value"

    invoke-interface {v9, v14, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_a

    const-string v14, "GenericSSOService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In setCustomizedBrandingInfo:  <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "> is added"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v14, "GenericSSOService"

    const-string v15, "In setCustomizedBrandingInfo: NullPointerException"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_c
    :try_start_1
    invoke-interface {v10, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v5

    const-string v14, "GenericSSOService"

    const-string v15, "In setCustomizedBrandingInfo: Exception"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 9

    const/4 v4, -0x3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-nez p1, :cond_1

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GenericSSOService"

    const-string v7, "In unenrollSSOVendor: cxtInfo is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "GenericSSOService"

    const-string v7, "In unenrollSSOVendor: MDM uid is not matched"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v4, -0xa

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "GenericSSOService"

    const-string v7, "In unenrollSSOVendor: authenticatorPkgName is null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_5

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1000(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In unenrollSSOVendor: this authenticator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not enrolled"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v4, -0x6

    goto :goto_0

    :cond_7
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearConfigAndTokenForAuthenticator(I)I

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "GenericSSOService"

    const-string v7, "In unenrollSSOVendor: failed clearConfigAndTokenFor Authenticator"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v4, -0x10

    goto :goto_0

    :cond_9
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    invoke-direct {p0, p2, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->stopAuthenticatorApplication(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "GenericSSOService"

    const-string v7, "In unenrollSSOVendor: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v4, -0x1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v6, "GenericSSOService"

    const-string v7, "In unenrollSSOVendor: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
