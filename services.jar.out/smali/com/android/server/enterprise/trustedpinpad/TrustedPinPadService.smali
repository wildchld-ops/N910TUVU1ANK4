.class public Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;
.super Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;
.source "TrustedPinPadService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DBG:Z

.field private static final KNOX_TRUSTED_PINPAD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_TRUSTED_PINPAD"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsTimaVersion30:Z

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    const-string v0, "TrustedPinPadService Service"

    sput-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string/jumbo v1, "tima"

    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TIMA_SERVICE:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v2, "TrustedPinPadService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_2

    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v2, "Called TIMA service getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1    # Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v10, "in getCertificates"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    sget-boolean v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v9, "getCertificates - TIMA version does not support Trusted Pin Pad"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    if-nez p1, :cond_4

    sget-boolean v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v9, "getCertificates - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v8, Ljava/security/InvalidParameterException;

    const-string v9, "Invalid Arguments"

    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v9, :cond_7

    :try_start_0
    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v10, "Called TIMA service get certs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v9, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v9}, Landroid/service/tima/ITimaService;->tuiGetCerts()[B

    move-result-object v2

    if-nez v2, :cond_8

    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v10, "TIMA service get certs returnd null certs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v1, v8

    :cond_7
    :goto_0
    return-object v1

    :cond_8
    const/4 v9, 0x0

    aget-byte v9, v2, v9

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    mul-int/lit16 v10, v10, 0x100

    add-int v4, v9, v10

    const/4 v9, 0x2

    aget-byte v9, v2, v9

    const/4 v10, 0x3

    aget-byte v10, v2, v10

    mul-int/lit16 v10, v10, 0x100

    add-int v7, v9, v10

    const-string v9, "X509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v9, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v10, v4, 0x4

    invoke-direct {v9, v2, v10, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v9, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v9, v6}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v9, Ljava/io/ByteArrayInputStream;

    const/4 v10, 0x4

    invoke-direct {v9, v2, v10, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v9, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v9, v3}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v5

    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_a

    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificates - RemoteException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v8

    goto :goto_0

    :catch_1
    move-exception v5

    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificates - CertificateException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v1, v8

    goto/16 :goto_0

    :catch_2
    move-exception v5

    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificates - Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    goto/16 :goto_0
.end method

.method public getSecretDimensions(Landroid/app/enterprise/ContextInfo;)[I
    .locals 6
    .param p1    # Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in getSecretDimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v3, "getSecretDimensions - TIMA version does not support Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p1, :cond_5

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "getSecretDimensions - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_4

    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "Called TIMA service getSecretDimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->tuiGetSecretDimension()[I

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v3, 0x2

    array-length v4, v0

    if-eq v3, v4, :cond_4

    :cond_7
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "getSecretDimensions failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecretDimensions - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_0
.end method

.method public launchTrustedPinPad(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .locals 7
    .param p1    # Landroid/app/enterprise/ContextInfo;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [B
    .param p5    # Z
    .param p6    # I

    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v1, "in launchTrustedPinPad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    iget-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v1, "launchTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p4, :cond_5

    :cond_3
    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v1, "launchTrustedPinPad - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/service/tima/ITimaService;->launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchTrustedPinPad - RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTrustedPinPad(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1    # Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in loadTrustedPinPad"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v3, "loadTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p1, :cond_4

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "loadTrustedPinPad - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_6

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->loadTui()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTrustedPinPad - loadTui returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTrustedPinPad - RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setPin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)[B
    .locals 4
    .param p1    # Landroid/app/enterprise/ContextInfo;
    .param p2    # Ljava/lang/String;
    .param p3    # [B

    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v2, "in setPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    iget-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPin - TIMA version does not include Trusted Pin Pad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_5

    :cond_3
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPin - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p2, p3}, Landroid/service/tima/ITimaService;->tuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPin - RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSecretImage(Landroid/app/enterprise/ContextInfo;[BIILjava/lang/String;)I
    .locals 6
    .param p1    # Landroid/app/enterprise/ContextInfo;
    .param p2    # [B
    .param p3    # I
    .param p4    # I
    .param p5    # Ljava/lang/String;

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in setSecretImage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSecretImage - TIMA version does not support Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_5

    :cond_3
    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSecretImage - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid Arguments"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_7

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSecretImage - tuiInitSecret returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSecretImage - RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method

.method public unloadTrustedPinPad(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1    # Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in unloadTrustedPinPad"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unloadTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p1, :cond_4

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unloadTrustedPinPad - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_6

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->unloadTui()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadTrustedPinPad - unloadTui returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadTrustedPinPad - RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method
