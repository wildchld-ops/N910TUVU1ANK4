.class public Lcom/android/phone/network/multipart/StringPart;
.super Lcom/android/phone/network/multipart/PartBase;
.source "StringPart.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private content:[B

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/network/multipart/StringPart;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/phone/network/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const-string v0, "text/plain"

    if-nez p3, :cond_0

    const-string p3, "UTF-8"

    :cond_0
    const-string v1, "8bit"

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/phone/network/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/android/phone/network/multipart/StringPart;->value:Ljava/lang/String;

    return-void
.end method

.method private getContent()[B
    .locals 4

    iget-object v2, p0, Lcom/android/phone/network/multipart/StringPart;->content:[B

    if-nez v2, :cond_0

    const-string v2, "support_mcid_with_alertinfo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/network/multipart/StringPart;->value:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/network/multipart/StringPart;->getCharSet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/network/multipart/StringPart;->content:[B

    :cond_0
    iget-object v2, p0, Lcom/android/phone/network/multipart/StringPart;->content:[B

    return-object v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/network/multipart/StringPart;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/network/multipart/StringPart;->getCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/network/multipart/StringPart;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    sget-object v0, Lcom/android/phone/network/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter lengthOfData()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/network/multipart/StringPart;->getContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 2
    .param p1    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/phone/network/multipart/StringPart;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter sendData(OutputStream)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/network/multipart/StringPart;->getContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
