.class public Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;
.super Ljava/lang/Object;
.source "AuthorizationHeaderCreater.java"


# static fields
.field private static final Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

.field private static final TAG:Ljava/lang/String; = "AuthorizationHeaderCreater"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private entityBody:[B

.field private gbaServiceKey:Ljava/lang/String;

.field private httpMethod:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private nonceCount:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private qop:Ljava/lang/String;

.field private realm:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "AuthorizationHeaderCreater"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # [B
    .param p10    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    iput-object p10, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    return-void
.end method

.method private setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const/4 v0, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Algo is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCnonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 3
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/Cnonce;->getCnonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setCnonce(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "AuthorizationHeaderCreater"

    const-string v2, "cNonce is null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDigestResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    move-object v0, p2

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GBA Service digest Response is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Digest Response is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const/4 v0, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Nonce is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNonceCount(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 1
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const-string v0, "00000001"

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setNonceCount(Ljava/lang/String;)V

    return-void
.end method

.method private setOpaque(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const/4 v0, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "Opaque is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setQop(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const/4 v0, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "QOP is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRealm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const/4 v0, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "realm is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 5
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const/4 v0, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GBA Service Response is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "GBA Service Response is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUri(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 4
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    const/4 v0, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setUri(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v2, "AuthorizationHeaderCreater"

    const-string v3, "URI is null"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUserName(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V
    .locals 3
    .param p1    # Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/http/impl/client/secgbaclient/GbaRequest;->getImpi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->setUserName(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "AuthorizationHeaderCreater"

    const-string v2, "userName is null"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createAuthorizationHeader()Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;
    .locals 7

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;

    invoke-direct {v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setUserName(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setAlgorithm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setCnonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setNonce(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setNonceCount(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setOpaque(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setQop(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setRealm(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setUri(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;)V

    new-instance v1, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;

    iget-object v3, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;->getUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    invoke-direct {v1, v0, v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;-><init>(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v1}, Lorg/apache/http/impl/client/secgbaclient/httpdigest/DigestCalculator;->calculateDigest()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->Log:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "AuthorizationHeaderCreater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Digest Response is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->setDigestResponse(Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeader;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityBody()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    return-object v0
.end method

.method public getGbaServiceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setCnonce(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->cnonce:Ljava/lang/String;

    return-void
.end method

.method public setEntityBody([B)V
    .locals 0
    .param p1    # [B

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->entityBody:[B

    return-void
.end method

.method public setGbaServiceKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->gbaServiceKey:Ljava/lang/String;

    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->httpMethod:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setNonceCount(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->nonceCount:Ljava/lang/String;

    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->opaque:Ljava/lang/String;

    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->qop:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->realm:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->uri:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/client/secgbaclient/AuthorizationHeaderCreater;->userName:Ljava/lang/String;

    return-void
.end method
