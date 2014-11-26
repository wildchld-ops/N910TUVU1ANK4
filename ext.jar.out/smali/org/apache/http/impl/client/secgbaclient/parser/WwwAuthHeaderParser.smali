.class public Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;
.super Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;
.source "WwwAuthHeaderParser.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "WwwAuthHeaderParser"


# instance fields
.field private paramSplitHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "WwwAuthHeaderParser"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    return-void
.end method

.method private parse(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setScheme(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setRealm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setNonce(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setQop(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setStale(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->setOpaque(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "WwwAuthHeaderParser"

    const-string v2, "Null Arguments"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "algorithm[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method private setNonce(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "nonce[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setNonce(Ljava/lang/String;)V

    return-void
.end method

.method private setOpaque(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "opaque[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setOpaque(Ljava/lang/String;)V

    return-void
.end method

.method private setQop(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "qop[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setQop(Ljava/lang/String;)V

    return-void
.end method

.method private setRealm(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "realm[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setRealm(Ljava/lang/String;)V

    return-void
.end method

.method private setScheme(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    const-string v0, "Digest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Digest"

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Basic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Basic"

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStale(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "stale[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->setStale(Z)V

    return-void
.end method


# virtual methods
.method public WwwAuthHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .locals 6
    .param p1    # Lorg/apache/http/HttpResponse;

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Parse the Header WwwAuthorizationHeader"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Http response is Null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "WWW-Authenticate"

    invoke-virtual {p0, p1, v3}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "AuthHeader value is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->parse(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Header parsing Completed "

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0
.end method

.method public proxyAuthHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;
    .locals 6
    .param p1    # Lorg/apache/http/HttpResponse;

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Parse the Header WwwAuthorizationHeader"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Http response is Null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "Proxy-Authenticate"

    invoke-virtual {p0, p1, v3}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "AuthHeader value is Null"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;

    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->parse(Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;Ljava/lang/String;)V

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/parser/WwwAuthHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "WwwAuthHeaderParser"

    const-string v5, "Header parsing Completed "

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0
.end method
