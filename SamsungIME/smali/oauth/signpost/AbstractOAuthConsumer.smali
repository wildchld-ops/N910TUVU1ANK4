.class public abstract Loauth/signpost/AbstractOAuthConsumer;
.super Ljava/lang/Object;
.source "AbstractOAuthConsumer.java"

# interfaces
.implements Loauth/signpost/OAuthConsumer;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private additionalParameters:Loauth/signpost/http/HttpParameters;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

.field private requestParameters:Loauth/signpost/http/HttpParameters;

.field private sendEmptyTokens:Z

.field private signingStrategy:Loauth/signpost/signature/SigningStrategy;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    iput-object p2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    new-instance v0, Loauth/signpost/signature/HmacSha1MessageSigner;

    invoke-direct {v0}, Loauth/signpost/signature/HmacSha1MessageSigner;-><init>()V

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthConsumer;->setMessageSigner(Loauth/signpost/signature/OAuthMessageSigner;)V

    new-instance v0, Loauth/signpost/signature/AuthorizationHeaderSigningStrategy;

    invoke-direct {v0}, Loauth/signpost/signature/AuthorizationHeaderSigningStrategy;-><init>()V

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthConsumer;->setSigningStrategy(Loauth/signpost/signature/SigningStrategy;)V

    return-void
.end method


# virtual methods
.method protected collectBodyParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getMessagePayload()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Loauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Loauth/signpost/http/HttpParameters;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method protected collectHeaderParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V
    .locals 2

    const-string v1, "Authorization"

    invoke-interface {p1, v1}, Loauth/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loauth/signpost/OAuth;->oauthHeaderToParamsMap(Ljava/lang/String;)Loauth/signpost/http/HttpParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    return-void
.end method

.method protected collectQueryParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V
    .locals 4

    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loauth/signpost/OAuth;->decodeForm(Ljava/lang/String;)Loauth/signpost/http/HttpParameters;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method protected completeOAuthParameters(Loauth/signpost/http/HttpParameters;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "oauth_consumer_key"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    const-string v0, "oauth_signature_method"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v1}, Loauth/signpost/signature/OAuthMessageSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_1
    const-string v0, "oauth_timestamp"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "oauth_timestamp"

    invoke-virtual {p0}, Loauth/signpost/AbstractOAuthConsumer;->generateTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_2
    const-string v0, "oauth_nonce"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "oauth_nonce"

    invoke-virtual {p0}, Loauth/signpost/AbstractOAuthConsumer;->generateNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_3
    const-string v0, "oauth_version"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_4
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Loauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Loauth/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "oauth_token"

    iget-object v1, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_7
    return-void
.end method

.method protected generateNonce()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateTimestamp()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParameters()Loauth/signpost/http/HttpParameters;
    .locals 1

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0}, Loauth/signpost/signature/OAuthMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdditionalParameters(Loauth/signpost/http/HttpParameters;)V
    .locals 0

    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->additionalParameters:Loauth/signpost/http/HttpParameters;

    return-void
.end method

.method public setMessageSigner(Loauth/signpost/signature/OAuthMessageSigner;)V
    .locals 1

    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Loauth/signpost/signature/OAuthMessageSigner;->setConsumerSecret(Ljava/lang/String;)V

    return-void
.end method

.method public setSendEmptyTokens(Z)V
    .locals 0

    iput-boolean p1, p0, Loauth/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    return-void
.end method

.method public setSigningStrategy(Loauth/signpost/signature/SigningStrategy;)V
    .locals 0

    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    return-void
.end method

.method public setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Loauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0, p2}, Loauth/signpost/signature/OAuthMessageSigner;->setTokenSecret(Ljava/lang/String;)V

    return-void
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    new-instance v1, Loauth/signpost/basic/UrlStringRequestAdapter;

    invoke-direct {v1, p1}, Loauth/signpost/basic/UrlStringRequestAdapter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    new-instance v2, Loauth/signpost/signature/QueryStringSigningStrategy;

    invoke-direct {v2}, Loauth/signpost/signature/QueryStringSigningStrategy;-><init>()V

    iput-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    invoke-virtual {p0, v1}, Loauth/signpost/AbstractOAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    iput-object v0, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    invoke-interface {v1}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Loauth/signpost/AbstractOAuthConsumer;->wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Loauth/signpost/AbstractOAuthConsumer;->sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public sign(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v3, "consumer key not set"

    invoke-direct {v2, v3}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Loauth/signpost/exception/OAuthExpectationFailedException;

    const-string v3, "consumer secret not set"

    invoke-direct {v2, v3}, Loauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Loauth/signpost/http/HttpParameters;

    invoke-direct {v2}, Loauth/signpost/http/HttpParameters;-><init>()V

    iput-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    :try_start_0
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->additionalParameters:Loauth/signpost/http/HttpParameters;

    if-eqz v2, :cond_2

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    iget-object v3, p0, Loauth/signpost/AbstractOAuthConsumer;->additionalParameters:Loauth/signpost/http/HttpParameters;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Loauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    :cond_2
    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v2}, Loauth/signpost/AbstractOAuthConsumer;->collectHeaderParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v2}, Loauth/signpost/AbstractOAuthConsumer;->collectQueryParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v2}, Loauth/signpost/AbstractOAuthConsumer;->collectBodyParameters(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {p0, v2}, Loauth/signpost/AbstractOAuthConsumer;->completeOAuthParameters(Loauth/signpost/http/HttpParameters;)V

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    const-string v3, "oauth_signature"

    invoke-virtual {v2, v3}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->messageSigner:Loauth/signpost/signature/OAuthMessageSigner;

    iget-object v3, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {v2, p1, v3}, Loauth/signpost/signature/OAuthMessageSigner;->sign(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-static {v2, v1}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loauth/signpost/AbstractOAuthConsumer;->signingStrategy:Loauth/signpost/signature/SigningStrategy;

    iget-object v3, p0, Loauth/signpost/AbstractOAuthConsumer;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-interface {v2, v1, p1, v3}, Loauth/signpost/signature/SigningStrategy;->writeSignature(Ljava/lang/String;Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;

    const-string v2, "Auth header"

    const-string v3, "Authorization"

    invoke-interface {p1, v3}, Loauth/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Request URL"

    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception v0

    new-instance v2, Loauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v2, v0}, Loauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected abstract wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
.end method
