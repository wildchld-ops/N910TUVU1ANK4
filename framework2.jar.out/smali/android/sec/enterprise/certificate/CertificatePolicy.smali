.class public Landroid/sec/enterprise/certificate/CertificatePolicy;
.super Ljava/lang/Object;
.source "CertificatePolicy.java"


# static fields
.field public static final BROWSER_MODULE:Ljava/lang/String; = "browser_module"

.field public static final CERT_ERROR_REVOKED:I = -0xce

.field public static final CERT_ERROR_UNABLE_TO_CHECK_REVOCATION:I = -0xcd

.field public static final MSG_ADDITIONAL_CHECKER:Ljava/lang/String; = "Additional certificate path checker failed."

.field public static final MSG_CRL_DIST_COULD_NOT_BE_READ:Ljava/lang/String; = "CRL distribution point extension could not be read"

.field public static final MSG_CRL_NOT_VALID:Ljava/lang/String; = "No valid CRL found."

.field public static final MSG_DIST_POINT_COULD_NOT_BE_READ:Ljava/lang/String; = "Distribution points could not be read."

.field public static final MSG_EXPIRED_CERT:Ljava/lang/String; = ", expiration time"

.field public static final MSG_IS_REVOKED_CERT:Ljava/lang/String; = "is revoked"

.field public static final MSG_NOT_YET_VALID_CERT:Ljava/lang/String; = ", validation time"

.field public static final MSG_NO_ADDITIONAL_CRL_DECODED:Ljava/lang/String; = "No additional CRL locations could be decoded from CRL distribution point extension."

.field public static final MSG_REVOKED_CERT:Ljava/lang/String; = "Certificate revocation after"

.field public static final MSG_UNABLE_CHECK_OCSP_STATUS:Ljava/lang/String; = "OCSP check failed!"

.field public static final MSG_UNABLE_CHECK_REVOCATION_STATUS:Ljava/lang/String; = "Certificate status could not be determined."

.field public static final MSG_UNABLE_GET_CRL:Ljava/lang/String; = "Unable to get CRL for certificate"

.field public static final PACKAGE_MODULE:Ljava/lang/String; = "package_manager_module"

.field public static final SBROWSER_VERIFY_NO_TRUSTED_ROOT:I = 0x2

.field public static final SBROWSER_VERIFY_REVOKED:I = 0x1

.field public static final SBROWSER_VERIFY_UNABLE_TO_CHECK_REVOCATION:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_MODULE:Ljava/lang/String; = "wifi_module"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CertificatePolicy"

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCaCertificateTrusted([BZ)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->isCaCertificateTrusted([BZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isCaCertificateTrusted: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isOcspCheckEnabled()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOcspCheckEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isOcspCheckEnabled: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRevocationCheckEnabled()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isRevocationCheckEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isRevocationCheckEnabled: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUserRemoveCertificatesAllowed()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isUserRemoveCertificatesAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isUserRemoveCertificatesAllowed: failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-notifyCertificateFailure:failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyCertificateRemoved(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyCertificateRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Landroid/sec/enterprise/certificate/CertificatePolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-notifyCertificateRemoved:failed talking with certificate policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
