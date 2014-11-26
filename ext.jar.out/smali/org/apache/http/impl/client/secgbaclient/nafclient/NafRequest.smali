.class public Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;
.super Lorg/apache/http/impl/client/secgbaclient/GbaRequest;
.source "NafRequest.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "NafRequest"

.field public static gbaType:Ljava/lang/String;


# instance fields
.field private ccm:Lorg/apache/http/conn/ClientConnectionManager;

.field private gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

.field private nafAuthorizationHeaderVal:Ljava/lang/String;

.field private nafHost:Lorg/apache/http/HttpHost;

.field public nafHttpContext:Lorg/apache/http/protocol/HttpContext;

.field private nafRequest:Lorg/apache/http/HttpRequest;

.field private requestDirector:Lorg/apache/http/client/RequestDirector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->requestDirector:Lorg/apache/http/client/RequestDirector;

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NafRequest constructor new with synchronisation ===useragent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addGBASupport()V
    .locals 7

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "User-Agent"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Predefined Header :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, "3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, " 3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v4, "User-Agent"

    invoke-interface {v3, v4, v1}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserAgent Header :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->userAgentPredefined:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v3, " 3gpp-gba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentCipherSuite(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 2
    .param p1    # Lorg/apache/http/client/RequestDirector;
    .param p2    # Lorg/apache/http/protocol/HttpContext;

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuiteFromRequestDirector(Lorg/apache/http/client/RequestDirector;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuiteFromRequestContext(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentCipherSuiteFromRequestContext(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;
    .locals 7
    .param p1    # Lorg/apache/http/protocol/HttpContext;

    const/4 v2, 0x0

    const-string v3, "http.connection"

    invoke-interface {p1, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    const-string v5, "Got the connection from the httpContext"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CipherSuite negotiated is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "NafRequest"

    const-string v5, "Client coonection is null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentCipherSuiteFromRequestDirector(Lorg/apache/http/client/RequestDirector;)Ljava/lang/String;
    .locals 10
    .param p1    # Lorg/apache/http/client/RequestDirector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Getting CipherSuite from request Director"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    instance-of v7, p1, Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v7, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "managedConn"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v7, v3, Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v7, :cond_1

    move-object v1, v3

    check-cast v1, Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "SSL Session is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Mangd Connection Field Value is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "MangdConnField is Null"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v7, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v8, "NafRequest"

    const-string v9, "Director is null or not instance of DefaultRequestDirector"

    invoke-virtual {v7, v8, v9}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static registerClientConnection(Lorg/apache/http/client/HttpClient;)V
    .locals 5
    .param p0    # Lorg/apache/http/client/HttpClient;

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest$1;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest$1;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-void
.end method


# virtual methods
.method public addAuthorizationHeader()V
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    const-string v1, "Authorization"

    iget-object v2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    const-string v2, "Authorization header is Null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized create(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V
    .locals 3
    .param p1    # Lorg/apache/http/HttpRequest;
    .param p2    # Lorg/apache/http/HttpHost;

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceManager;->getServiceWrapper()Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getImei()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->imeiVal:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->getImpi()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->setDomain(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaService:Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/remote/GbaServiceWrapper;->isGbaUiccSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "gba-u"

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->addGBASupport()V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->addAuthorizationHeader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "gba-me"

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->gbaType:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "NafRequest"

    const-string v2, "GBA Service is not running or binding failed"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized createAndSendRequest(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/RequestDirector;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1    # Lorg/apache/http/HttpRequest;
    .param p2    # Lorg/apache/http/HttpHost;
    .param p3    # Lorg/apache/http/protocol/HttpContext;
    .param p4    # Lorg/apache/http/client/RequestDirector;
    .param p5    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    const-class v1, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sput-object p5, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->userAgentPredefined:Ljava/lang/String;

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "NafRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NafRequest createAndSendReuest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->userAgentPredefined:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->create(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)V

    invoke-virtual {p0, p3, p4}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->sendRequest(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentNafreq()Lorg/apache/http/HttpRequest;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    return-object v0
.end method

.method public getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v3, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;

    invoke-direct {v3, v5}, Lorg/apache/http/impl/client/secgbaclient/GbaSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const v4, 0xea60

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const v6, 0xea60

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v3, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v6, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v6, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v7, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->ccm:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v6, v7, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_4
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_5
    move-exception v0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public declared-synchronized sendRequest(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/RequestDirector;)Lorg/apache/http/HttpResponse;
    .locals 10
    .param p1    # Lorg/apache/http/protocol/HttpContext;
    .param p2    # Lorg/apache/http/client/RequestDirector;

    monitor-enter p0

    :try_start_0
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "sendRequest"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->requestDirector:Lorg/apache/http/client/RequestDirector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-static {v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printRequest(Lorg/apache/http/HttpRequest;)V

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "secondRequest"

    invoke-interface {v6, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    iget-object v7, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {p2, v6, v7, p1}, Lorg/apache/http/client/RequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "after response for naf request==="

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x191

    if-eq v6, v7, :cond_0

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "401 not received from NAF, authorization complete"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    :goto_0
    monitor-exit p0

    return-object v6

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    const-string v6, "true"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "returning here==secondRequest response="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "secondRequest"

    const-string v8, "false"

    invoke-interface {v6, v7, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v5

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "response for first naf request==="

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "Https is used Extracting the Ciphersuite"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getCurrentCipherSuite(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CipherSuite negotiated is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->setCipherSuite(Ljava/lang/String;)V

    :cond_2
    new-instance v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-direct {v4, p0, v6}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;-><init>(Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;Lorg/apache/http/HttpRequest;)V

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafTransaction;->handleUnauthorizedRes(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_3
    sget-object v6, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v7, "NafRequest"

    const-string v8, "Response is NULL"

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v6, v5

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendSecondNafRequest()Lorg/apache/http/HttpResponse;
    .locals 8

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    invoke-static {v4}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printRequest(Lorg/apache/http/HttpRequest;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->registerClientConnection(Lorg/apache/http/client/HttpClient;)V

    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v5, "secondRequest"

    const-string v6, "true"

    invoke-interface {v4, v5, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHost:Lorg/apache/http/HttpHost;

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafRequest:Lorg/apache/http/HttpRequest;

    iget-object v6, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v1, v4, v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaUtil;->printResponse(Lorg/apache/http/HttpResponse;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something went Wrong in Second NAF Request"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v3, v2

    :goto_1
    return-object v3

    :cond_0
    sget-object v4, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v5, "NafRequest"

    const-string v6, "second naf response is 200"

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v3, v2

    goto :goto_1
.end method

.method public setNafAuthorizationHeaderVal(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/nafclient/NafRequest;->nafAuthorizationHeaderVal:Ljava/lang/String;

    return-void
.end method
