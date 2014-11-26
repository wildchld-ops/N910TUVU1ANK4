.class public Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;
.super Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;
.source "BsfResponseXmlParser.java"


# static fields
.field private static final BOOTSTRAPPINGINFO_NODE:Ljava/lang/String; = "BootstrappingInfo"

.field private static final BTID_NODE:Ljava/lang/String; = "btid"

.field private static final LIFETIME_NODE:Ljava/lang/String; = "lifetime"

.field private static final TAG:Ljava/lang/String; = "BsfResponseXmlParser"

.field private static final gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v1, "BsfResponseXmlParser"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;-><init>()V

    return-void
.end method

.method private parseSetBtid(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V
    .locals 7
    .param p1    # Lorg/w3c/dom/Element;
    .param p2    # Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    const-string v3, "btid"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "BsfResponseXmlParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bTidVal====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->setbTid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseSetLifetime(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V
    .locals 7
    .param p1    # Lorg/w3c/dom/Element;
    .param p2    # Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    const-string v3, "lifetime"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->gbaLog:Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;

    const-string v4, "BsfResponseXmlParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lifeTimeVal====="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/secgbaclient/util/GbaLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;->setLifeTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public parseFinalBsfRes(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V
    .locals 6
    .param p1    # Lorg/apache/http/HttpResponse;
    .param p2    # Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/secgbaclient/parser/HttpResponseXmlParser;->getDoc(Lorg/apache/http/HttpResponse;)Lorg/w3c/dom/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "BootstrappingInfo"

    invoke-interface {v2, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->parseSetBtid(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfResponseXmlParser;->parseSetLifetime(Lorg/w3c/dom/Element;Lorg/apache/http/impl/client/secgbaclient/bsfclient/BsfFinalAuthResData;)V

    :cond_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "BootStrapping Info not present in BSF Response"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
