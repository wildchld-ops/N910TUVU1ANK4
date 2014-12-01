.class public Lcom/android/mms/csc/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static final CHAMELEON_PRESET_MESSAGE_EN_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_en.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_ES_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_es.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_KO_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_ko.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_VI_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_vi.xml"

.field private static final CHAMELEON_PRESET_MESSAGE_ZH_XML_FILE:Ljava/lang/String; = "/carrier/data/app/mms/PresetMessage_zh_cn.xml"

.field private static final CSC_XML_FILE:Ljava/lang/String; = "/system/csc/customer.xml"

.field public static final PRESET_MESSAGE_EN:I = 0x0

.field public static final PRESET_MESSAGE_ES:I = 0x1

.field public static final PRESET_MESSAGE_KO:I = 0x3

.field public static final PRESET_MESSAGE_VI:I = 0x2

.field public static final PRESET_MESSAGE_ZH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Mms/CscParser"

.field private static sChameleonInstance:Lcom/android/mms/csc/CscParser;

.field private static sCustomerInstance:Lcom/android/mms/csc/CscParser;


# instance fields
.field private mDocument:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    return-void
.end method

.method public static getChameleonInstance(I)Lcom/android/mms/csc/CscParser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getCustomerInstance()Lcom/android/mms/csc/CscParser;
    .locals 3

    const-class v1, Lcom/android/mms/csc/CscParser;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/csc/CscParser;

    invoke-direct {v0}, Lcom/android/mms/csc/CscParser;-><init>()V

    sput-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    const-string v2, "/system/csc/customer.xml"

    invoke-virtual {v0, v2}, Lcom/android/mms/csc/CscParser;->load(Ljava/lang/String;)Z

    :goto_0
    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/csc/CscParser;->sCustomerInstance:Lcom/android/mms/csc/CscParser;

    const-string v2, "/system/csc/customer.xml"

    invoke-virtual {v0, v2}, Lcom/android/mms/csc/CscParser;->load(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v4, "Mms/CscParser"

    const-string v5, "ParserConfigurationException is occured"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "Mms/CscParser"

    const-string v5, "SAXException is occured"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const-string v4, "Mms/CscParser"

    const-string v5, "File didn\'t exist"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v4, "Mms/CscParser"

    const-string v5, "IOException is occured"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/mms/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/csc/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0
.end method
