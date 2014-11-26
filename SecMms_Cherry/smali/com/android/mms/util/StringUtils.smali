.class public Lcom/android/mms/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cutUtf8ByByte([BI)[B
    .locals 6
    .param p0    # [B
    .param p1    # I

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    if-gtz p1, :cond_2

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    if-gt v2, p1, :cond_5

    move v1, v2

    :cond_3
    :goto_2
    new-array v3, v1, [B

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_7

    aget-byte v4, p0, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xc0

    const/16 v5, 0x80

    if-ne v4, v5, :cond_6

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    if-gt v2, p1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_7
    move-object p0, v3

    goto :goto_0
.end method

.method public static cutUtf8ByEucByte([BI)[B
    .locals 7
    .param p0    # [B
    .param p1    # I

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    if-gtz p1, :cond_2

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    goto :goto_0

    :cond_2
    if-le v0, p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_a

    :cond_3
    :goto_2
    add-int/lit8 v1, v3, 0x1

    if-le v1, v0, :cond_4

    move v1, v0

    :cond_4
    new-array v4, v1, [B

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_b

    aget-byte v5, p0, v3

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    if-eq v2, p1, :cond_3

    if-le v2, p1, :cond_a

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_7

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    if-eq v2, p1, :cond_3

    if-le v2, p1, :cond_a

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v3, -0x3

    goto :goto_2

    :cond_7
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf8

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_8

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v3, 0x3

    if-eq v2, p1, :cond_3

    if-le v2, p1, :cond_a

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v3, v3, -0x4

    goto :goto_2

    :cond_8
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xfc

    const/16 v6, 0xf8

    if-ne v5, v6, :cond_9

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v3, v3, 0x4

    if-eq v2, p1, :cond_3

    if-le v2, p1, :cond_a

    add-int/lit8 v2, v2, -0x5

    add-int/lit8 v3, v3, -0x5

    goto :goto_2

    :cond_9
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xfe

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_a

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v3, 0x5

    if-eq v2, p1, :cond_3

    if-le v2, p1, :cond_a

    add-int/lit8 v2, v2, -0x6

    add-int/lit8 v3, v3, -0x6

    goto :goto_2

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_b
    move-object p0, v4

    goto/16 :goto_0
.end method

.method public static getLengthUtf8([B)I
    .locals 5
    .param p0    # [B

    if-nez p0, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_5
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_6
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfc

    const/16 v4, 0xf8

    if-ne v3, v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_7
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x5

    goto :goto_1
.end method

.method public static getLengthUtf8ByEucByte([B)I
    .locals 5
    .param p0    # [B

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_5

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_5
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_6

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_6
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xfc

    const/16 v4, 0xf8

    if-ne v3, v4, :cond_7

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_7
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xfc

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x5

    goto :goto_1
.end method
