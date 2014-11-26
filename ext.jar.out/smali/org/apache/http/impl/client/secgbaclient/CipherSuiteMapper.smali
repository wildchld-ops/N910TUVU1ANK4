.class public Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;
.super Ljava/lang/Object;
.source "CipherSuiteMapper.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "CipherSuiteMapper"

.field private static myCipherSuiteMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "CipherSuiteMapper"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->myCipherSuiteMapper:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->initializeMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->myCipherSuiteMapper:Ljava/util/Map;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;-><init>()V

    return-object v0
.end method

.method private static initializeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper$1;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCipherSuiteId(Ljava/lang/String;)[B
    .locals 5
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "CipherSuiteMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CiphersuiteID is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->myCipherSuiteMapper:Ljava/util/Map;

    const-string v4, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->myCipherSuiteMapper:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "CipherSuiteMapper"

    const-string v2, "cipherSuite Name is null or length is <=0"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultCipherSuiteId()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
