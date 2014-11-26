.class public Lcom/android/mms/dom/smil/parser/SmilXmlParser;
.super Ljava/lang/Object;
.source "SmilXmlParser.java"


# instance fields
.field private mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

.field private mXmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-direct {v1}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    iget-object v2, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private validateDocument(Lorg/w3c/dom/smil/SMILDocument;)V
    .locals 0
    .param p1    # Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 3
    .param p1    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->reset()V

    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mXmlReader:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object v1, p0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->mContentHandler:Lcom/android/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/parser/SmilContentHandler;->getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->validateDocument(Lorg/w3c/dom/smil/SMILDocument;)V

    return-object v0
.end method
