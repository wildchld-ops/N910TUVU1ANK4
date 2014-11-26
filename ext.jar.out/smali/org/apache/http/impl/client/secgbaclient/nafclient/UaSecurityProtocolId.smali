.class public Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;
.super Ljava/lang/Object;
.source "UaSecurityProtocolId.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "UaSecurityProtocolId"


# instance fields
.field private final uaCipherSuiteMapper:Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "UaSecurityProtocolId"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->getInstance()Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->uaCipherSuiteMapper:Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;

    return-void
.end method

.method private genUaSecureProtoId([B)[B
    .locals 4
    .param p1    # [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v0, v1, [B

    aput-byte v3, v0, v2

    aput-byte v2, v0, v3

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getUaSecureProtoId(Ljava/lang/String;)[B
    .locals 6
    .param p1    # Ljava/lang/String;

    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "UaSecurityProtocolId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USed Cipher Duire IS: +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->uaCipherSuiteMapper:Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->getCipherSuiteId(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v3, "UaSecurityProtocolId"

    const-string v4, "CipherSuite not found going to use default"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->getUaSecurityProtocolId4Http()[B

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/UaSecurityProtocolId;->genUaSecureProtoId([B)[B

    move-result-object v1

    move-object v2, v1

    goto :goto_0
.end method

.method public getUaSecurityProtocolId4Http()[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data
.end method
