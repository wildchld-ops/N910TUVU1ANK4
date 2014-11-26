.class public Lorg/apache/http/impl/client/secgbaclient/GbaRequest;
.super Ljava/lang/Object;
.source "GbaRequest.java"


# static fields
.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "GbaRequest"

.field protected static curCipherSuite:Ljava/lang/String;

.field protected static domainVal:Ljava/lang/String;

.field protected static imeiVal:Ljava/lang/String;

.field protected static impiVal:Ljava/lang/String;

.field protected static userAgentPredefined:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->userAgentPredefined:Ljava/lang/String;

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->imeiVal:Ljava/lang/String;

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->domainVal:Ljava/lang/String;

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->curCipherSuite:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaRequest"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaRequest"

    const-string v2, "Constructor Called"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "GbaRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor Called 222 userAgent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->userAgentPredefined:Ljava/lang/String;

    sput-object p1, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->userAgentPredefined:Ljava/lang/String;

    return-void
.end method

.method public static getCipherSuite()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->curCipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public static getDomain()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->domainVal:Ljava/lang/String;

    return-object v0
.end method

.method public static getImpi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    return-object v0
.end method

.method public static getimei()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->imeiVal:Ljava/lang/String;

    return-object v0
.end method

.method protected static setCipherSuite(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->curCipherSuite:Ljava/lang/String;

    return-void
.end method

.method public static setDomain(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->domainVal:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setImpi(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->impiVal:Ljava/lang/String;

    return-void
.end method

.method public static setimei(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->imeiVal:Ljava/lang/String;

    return-void
.end method
