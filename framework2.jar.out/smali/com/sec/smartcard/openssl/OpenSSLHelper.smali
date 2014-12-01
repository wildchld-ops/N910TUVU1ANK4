.class public Lcom/sec/smartcard/openssl/OpenSSLHelper;
.super Ljava/lang/Object;
.source "OpenSSLHelper.java"


# static fields
.field private static final FUNCTION_LIST_NAME:Ljava/lang/String; = "TZ_CCM_C_GetFunctionList"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "libtlc_tz_ccm.so"

.field static final TAG:Ljava/lang/String; = "OpenSSLHelper"


# instance fields
.field private pkey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "secopenssl_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public native deregisterEngineKeychain()I
.end method

.method public deregister_engine()Z
    .locals 3

    const-string v1, "OpenSSLHelper"

    const-string v2, "deregister_engine function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    invoke-virtual {v1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->deregisterEngineKeychain()I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "OpenSSLHelper"

    const-string v2, "DeRegister engine success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4

    const-string v2, "OpenSSLHelper"

    const-string v3, "getPrivateKey function"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    if-nez v2, :cond_0

    const-string/jumbo v2, "secpkcs11"

    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngine;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/smartcard/openssl/OpenSSLHelper;->pkey:Ljava/security/PrivateKey;

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "OpenSSLHelper"

    const-string v3, "InvalidKeyException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getSlotID(Ljava/lang/String;)J
    .locals 3

    const-string v1, "OpenSSLHelper"

    const-string v2, "getSlotID function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/sec/enterprise/ClientCertificateManager;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public registerEngine(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "OpenSSLHelper"

    const-string/jumbo v5, "registerEngine function"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->getSlotID(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    const-string v4, "OpenSSLHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerEngine - getSlotID returned invalid slotid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v4, Lcom/sec/smartcard/openssl/OpenSSLHelper;

    invoke-direct {v4}, Lcom/sec/smartcard/openssl/OpenSSLHelper;-><init>()V

    const-string v5, "libtlc_tz_ccm.so"

    const-string v6, "TZ_CCM_C_GetFunctionList"

    invoke-virtual {v4, v5, v6, v1, v2}, Lcom/sec/smartcard/openssl/OpenSSLHelper;->registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "OpenSSLHelper"

    const-string v4, "Register engine success"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public native registerEngineKeychain(Ljava/lang/String;Ljava/lang/String;J)I
.end method
