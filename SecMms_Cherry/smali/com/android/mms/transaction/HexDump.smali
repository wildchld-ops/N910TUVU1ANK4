.class public Lcom/android/mms/transaction/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _cbuffer:Ljava/lang/StringBuffer;

.field private static final _hexcodes:[C

.field private static final _lbuffer:Ljava/lang/StringBuffer;

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HexDump;->EOL:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/android/mms/transaction/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/android/mms/transaction/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/HexDump;->_hexcodes:[C

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/transaction/HexDump;->_shifts:[I

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dump(B)Ljava/lang/StringBuffer;
    .locals 5
    .param p0    # B

    sget-object v1, Lcom/android/mms/transaction/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/mms/transaction/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/mms/transaction/HexDump;->_hexcodes:[C

    sget-object v3, Lcom/android/mms/transaction/HexDump;->_shifts:[I

    add-int/lit8 v4, v0, 0x6

    aget v3, v3, v4

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/mms/transaction/HexDump;->_cbuffer:Ljava/lang/StringBuffer;

    return-object v1
.end method

.method private static dump(J)Ljava/lang/StringBuffer;
    .locals 5
    .param p0    # J

    sget-object v1, Lcom/android/mms/transaction/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/mms/transaction/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/android/mms/transaction/HexDump;->_hexcodes:[C

    sget-object v3, Lcom/android/mms/transaction/HexDump;->_shifts:[I

    aget v3, v3, v0

    shr-long v3, p0, v3

    long-to-int v3, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/mms/transaction/HexDump;->_lbuffer:Ljava/lang/StringBuffer;

    return-object v1
.end method

.method public static dump(Ljava/lang/String;[BJIILjava/lang/Object;)V
    .locals 10
    .param p0    # Ljava/lang/String;
    .param p1    # [B
    .param p2    # J
    .param p4    # I
    .param p5    # I
    .param p6    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p4, :cond_0

    array-length v7, p1

    if-lt p4, v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into array of length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    if-nez p6, :cond_2

    sget-object p6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :cond_2
    int-to-long v7, p4

    add-long v3, p2, v7

    const/4 v2, 0x0

    if-eqz p5, :cond_3

    array-length v7, p1

    if-le p5, v7, :cond_5

    :cond_3
    array-length v2, p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0x4a

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/android/mms/transaction/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, p4

    :goto_1
    if-ge v5, v2, :cond_a

    sub-int v1, v2, v5

    const/16 v7, 0x10

    if-le v1, v7, :cond_4

    const/16 v1, 0x10

    :cond_4
    invoke-static {v3, v4}, Lcom/android/mms/transaction/HexDump;->dump(J)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :goto_2
    const/16 v7, 0x10

    if-ge v6, v7, :cond_7

    if-ge v6, v1, :cond_6

    add-int v7, v6, v5

    aget-byte v7, p1, v7

    invoke-static {v7}, Lcom/android/mms/transaction/HexDump;->dump(B)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :goto_3
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v2, p5

    goto :goto_0

    :cond_6
    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v1, :cond_9

    add-int v7, v6, v5

    aget-byte v7, p1, v7

    const/16 v8, 0x20

    if-lt v7, v8, :cond_8

    add-int v7, v6, v5

    aget-byte v7, p1, v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_8

    add-int v7, v6, v5

    aget-byte v7, p1, v7

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    sget-object v7, Lcom/android/mms/transaction/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-long v7, v1

    add-long/2addr v3, v7

    add-int/lit8 v5, v5, 0x10

    goto :goto_1

    :cond_a
    const-string v7, ""

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-void
.end method
