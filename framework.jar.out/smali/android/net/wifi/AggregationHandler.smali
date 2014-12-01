.class public Landroid/net/wifi/AggregationHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "AggregationHandler.java"


# static fields
.field private static final ACCESS_LOCATION:Ljava/lang/String; = "AccessLocation"

.field private static final ACCESS_PROCEDURE:Ljava/lang/String; = "AccessProcedure"

.field private static final AUTHENTICATION_REPLY:Ljava/lang/String; = "AuthenticationReply"

.field public static final AUTHENTICATION_RESPONCE_CODE_INTERNAL_ERROR:I = 0xff

.field public static final AUTHENTICATION_RESPONCE_CODE_LOGIN_FAIL:I = 0x64

.field public static final AUTHENTICATION_RESPONCE_CODE_OK:I = 0x32

.field private static final LOGINURL:Ljava/lang/String; = "LoginURL"

.field private static final LOGOFFURL:Ljava/lang/String; = "LogoffURL"

.field private static final MESSAGE_TYPE:Ljava/lang/String; = "MessageType"

.field public static final PREDIRECT_RESPONCE_CODE_INTERNAL_ERROR:I = 0x69

.field private static final PROXY:Ljava/lang/String; = "Proxy"

.field private static final REDIRECT:Ljava/lang/String; = "Redirect"

.field public static final REDIRECT_RESPONCE_CODE_ADMIN_ERROR:I = 0xff

.field public static final REDIRECT_RESPONCE_CODE_OK:I = 0x0

.field public static final REPLY_MSG_TYPE_AUTHENTICATION:I = 0x64

.field public static final REPLY_MSG_TYPE_PROXY:I = 0x6e

.field public static final REPLY_MSG_TYPE_REDIRECT:I = 0x64

.field private static final RESPONSE_CODE:Ljava/lang/String; = "ResponseCode"


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private currentMessage:Landroid/net/wifi/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->characters([CII)V

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public comment([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string v1, "WISPAccessGatewayParam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "SAXParser"

    const-string v2, "Comment found having WISPR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    invoke-virtual {v1, v0}, Landroid/net/wifi/Message;->setComment(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/wifi/Message;->hasWispr:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->comment([CII)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SAXParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in end element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    if-eqz v0, :cond_1

    const-string v0, "AccessProcedure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/Message;->setAccessProcedure(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "AccessLocation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/Message;->setAccesslocation(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "MessageType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/Message;->setMessageType(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "ResponseCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/Message;->setResponseCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "LoginURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/Message;->setLoginURL(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "LogoffURL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    iget-object v1, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/Message;->setLogoffURL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMessage()Landroid/net/wifi/Message;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    return-object v0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/AggregationHandler;->builder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/net/wifi/Message;

    invoke-direct {v0}, Landroid/net/wifi/Message;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    iget-object v0, p0, Landroid/net/wifi/AggregationHandler;->currentMessage:Landroid/net/wifi/Message;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/Message;->hasWispr:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v0, "SAXParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in start element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
