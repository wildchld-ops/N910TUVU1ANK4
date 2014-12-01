.class public Lcom/touchtype_fluency/service/util/UrlManager;
.super Ljava/lang/Object;
.source "UrlManager.java"


# static fields
.field static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field private static final TAG:Ljava/lang/String; = "UrlManager"

.field private static final apiVersion:Ljava/lang/String; = "10"

.field private static final deleteApiVersion:Ljava/lang/String; = "1"


# instance fields
.field private mEstablishedUrl:Ljava/lang/String;

.field private final mInstallationId:Ljava/lang/String;

.field mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

.field private mRequestId:Ljava/lang/String;

.field private final mServicePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mRequestId:Ljava/lang/String;

    invoke-static {p3}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getInstance(Landroid/content/Context;)Lcom/touchtype/personalizer/PersonalizationKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    iput-object p1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mServicePath:Ljava/lang/String;

    return-void
.end method

.method private makeFullDeleteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getPartnerTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeFullUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getPartnerTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mServicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mRequestId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%s?%s=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "request_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mRequestId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getDeleteUrlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getDeleteLoadBalanceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/service/util/UrlManager;->makeFullDeleteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEstablishedUrl()Ljava/net/URL;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "UrlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error formatting URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEstablishedUrlString()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/service/util/UrlManager;->makeFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getLoadBalanceUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v1}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getPartnerTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialUrl()Ljava/net/URL;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getInitialUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "UrlManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error formatting URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/touchtype_fluency/service/util/UrlManager;->getEstablishedUrlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/touchtype_fluency/service/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInitialUrlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mKeyManager:Lcom/touchtype/personalizer/PersonalizationKeyManager;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizationKeyManager;->getLoadBalanceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/service/util/UrlManager;->makeFullUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setEstablishedUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mEstablishedUrl:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/service/util/UrlManager;->mRequestId:Ljava/lang/String;

    return-void
.end method
