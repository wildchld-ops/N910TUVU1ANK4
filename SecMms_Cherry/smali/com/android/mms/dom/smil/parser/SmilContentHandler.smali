.class public Lcom/android/mms/dom/smil/parser/SmilContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SmilContentHandler.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/SmilContentHandler"


# instance fields
.field private mCurrentNode:Lorg/w3c/dom/Node;

.field private mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    iget-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mSmilDocument:Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v3, p2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->mCurrentNode:Lorg/w3c/dom/Node;

    return-void
.end method
