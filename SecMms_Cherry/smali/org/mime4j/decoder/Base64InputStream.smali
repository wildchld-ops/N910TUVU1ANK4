.class public Lorg/mime4j/decoder/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field private static TRANSLATION:[B

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final byteq:Lorg/mime4j/decoder/ByteQueue;

.field private done:Z

.field private final s:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/mime4j/decoder/Base64InputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/mime4j/decoder/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/mime4j/decoder/ByteQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mime4j/decoder/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mime4j/decoder/Base64InputStream;->done:Z

    iput-object p1, p0, Lorg/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    return-void
.end method

.method private decodeAndEnqueue([BI)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x12

    or-int/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v0, v4

    aget-byte v4, p1, v5

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v0, v4

    aget-byte v4, p1, v6

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v1, v4

    iget-object v4, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v1}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    if-le p2, v5, :cond_0

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    iget-object v4, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v2}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    if-le p2, v6, :cond_0

    and-int/lit16 v4, v0, 0xff

    int-to-byte v3, v4

    iget-object v4, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v4, v3}, Lorg/mime4j/decoder/ByteQueue;->enqueue(B)V

    :cond_0
    return-void
.end method

.method private fillBuffer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    new-array v0, v5, [B

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lorg/mime4j/decoder/Base64InputStream;->done:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    sget-object v5, Lorg/mime4j/decoder/Base64InputStream;->TRANSLATION:[B

    aget-byte v4, v5, v1

    if-ltz v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v0, v2

    array-length v5, v0

    if-ne v3, v5, :cond_2

    invoke-direct {p0, v0, v3}, Lorg/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    move v2, v3

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    if-lez v2, :cond_1

    sget-object v5, Lorg/mime4j/decoder/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected EOF in MIME parser, dropping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sextets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v0, v2}, Lorg/mime4j/decoder/Base64InputStream;->decodeAndEnqueue([BI)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/mime4j/decoder/Base64InputStream;->done:Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mime4j/decoder/Base64InputStream;->s:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/mime4j/decoder/Base64InputStream;->fillBuffer()V

    iget-object v1, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/mime4j/decoder/ByteQueue;->count()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/mime4j/decoder/Base64InputStream;->byteq:Lorg/mime4j/decoder/ByteQueue;

    invoke-virtual {v1}, Lorg/mime4j/decoder/ByteQueue;->dequeue()B

    move-result v0

    if-gez v0, :cond_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
