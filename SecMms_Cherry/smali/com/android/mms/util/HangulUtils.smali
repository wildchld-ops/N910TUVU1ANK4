.class public Lcom/android/mms/util/HangulUtils;
.super Ljava/lang/Object;
.source "HangulUtils.java"


# static fields
.field private static KOREAN_JAUM_CONVERT_MAP:[I

.field private static KOREAN_JAUM_CONVERT_MAP_COUNT:I

.field private static KOREAN_RANGE_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x1e

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    sput v1, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/util/HangulUtils;->KOREAN_RANGE_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1100
        0x1101
        0x0
        0x1102
        0x0
        0x0
        0x1103
        0x1104
        0x1105
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1106
        0x1107
        0x1108
        0x0
        0x1109
        0x110a
        0x110b
        0x110c
        0x110d
        0x110e
        0x110f
        0x1110
        0x1111
        0x1112
    .end array-data

    :array_1
    .array-data 4
        0xac00
        0xae4c
        0x0
        0xb098
        0x0
        0x0
        0xb2e4
        0xb530
        0xb77c
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xb9c8
        0xbc14
        0xbe60
        0x0
        0xc0ac
        0xc2f8
        0xc544
        0xc790
        0xc9dc
        0xcc28
        0xce74
        0xd0c0
        0xd30c
        0xd558
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConsonants(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const v8, 0xac00

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_1

    :goto_1
    if-lt v3, v5, :cond_4

    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    if-lt v0, v8, :cond_3

    sub-int v6, v0, v8

    div-int/lit16 v6, v6, 0x24c

    add-int/lit16 v0, v6, 0x1100

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v6, 0x3131

    if-lt v0, v6, :cond_2

    add-int/lit16 v6, v0, -0x3131

    sget v7, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    if-ge v6, v7, :cond_0

    sget-object v6, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v7, v0, -0x3131

    aget v0, v6, v7

    if-nez v0, :cond_2

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public static haveKoreanConsonants(Ljava/lang/String;)Z
    .locals 6

    const/16 v5, 0x3131

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v3, 0x1100

    if-lt v0, v3, :cond_4

    const/16 v3, 0x1112

    if-le v0, v3, :cond_2

    if-lt v0, v5, :cond_4

    :cond_2
    const/16 v3, 0x314e

    if-le v0, v3, :cond_3

    const v3, 0xac00

    if-lt v0, v3, :cond_4

    :cond_3
    const v3, 0xd7a3

    if-gt v0, v3, :cond_4

    if-lt v0, v5, :cond_4

    add-int/lit16 v3, v0, -0x3131

    sget v4, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    if-ge v3, v4, :cond_4

    sget-object v3, Lcom/android/mms/util/HangulUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v4, v0, -0x3131

    aget v0, v3, v4

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isIncludingKorean(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v3, 0x1100

    if-lt v0, v3, :cond_4

    const/16 v3, 0x1112

    if-le v0, v3, :cond_2

    const/16 v3, 0x3131

    if-lt v0, v3, :cond_4

    :cond_2
    const/16 v3, 0x314e

    if-le v0, v3, :cond_3

    const v3, 0xac00

    if-lt v0, v3, :cond_4

    :cond_3
    const v3, 0xd7a3

    if-gt v0, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
