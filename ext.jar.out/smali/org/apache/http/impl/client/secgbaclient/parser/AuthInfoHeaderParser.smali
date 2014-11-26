.class public Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;
.super Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;
.source "AuthInfoHeaderParser.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final REGEX_CNONCE:Ljava/lang/String; = "cnonce[\\s]*="

.field private static final REGEX_NONCECOUNT:Ljava/lang/String; = "nc[\\s]*="

.field private static final REGEX_RSPAUTH:Ljava/lang/String; = "rspauth[\\s]*="

.field private static final TAG:Ljava/lang/String; = "AuthInfoHeaderParser"


# instance fields
.field private paramSplitHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "AuthInfoHeaderParser"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    return-void
.end method

.method private parse(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->setQop(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->setRspAuth(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->setCNonce(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->setNonceCount(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;->toString()Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication-Info Header Value is Null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCNonce(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    const-string v3, "Set QOP "

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cnonce[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cNonceVal value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;->setCnonce(Ljava/lang/String;)V

    return-void
.end method

.method private setNonceCount(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    const-string v3, "Set QOP "

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nc[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonceCountVal is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;->setCnonce(Ljava/lang/String;)V

    return-void
.end method

.method private setQop(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    const-string v3, "Set QOP "

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qop[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QOP value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;->setQop(Ljava/lang/String;)V

    return-void
.end method

.method private setRspAuth(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    const-string v3, "Set QOP "

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rspauth[\\s]*="

    invoke-virtual {p0, v1, p2}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthInfoHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rspAuthVal value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;->setRspauth(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public authInfoHeaderParse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;
    .locals 5
    .param p1    # Lorg/apache/http/HttpResponse;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Final response is Null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v3, "Authentication-Info"

    invoke-virtual {p0, p1, v3}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpHeaderParser;->getHeaderValue(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;

    invoke-direct {v1}, Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/client/secgbaclient/parser/AuthInfoHeaderParser;->parse(Lorg/apache/http/impl/client/secgbaclient/AuthenticationInfoHeader;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0
.end method
