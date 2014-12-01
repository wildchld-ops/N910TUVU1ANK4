.class public Lcom/google/gdata/util/common/base/PercentEscaper;
.super Lcom/google/gdata/util/common/base/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field public static final SAFECHARS_URLENCODER:Ljava/lang/String; = "-_.*"

.field public static final SAFEPATHCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;="

.field public static final SAFEQUERYSTRINGCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/gdata/util/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/google/gdata/util/common/base/UnicodeEscaper;-><init>()V

    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean p2, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->plusForSpace:Z

    invoke-static {p1}, Lcom/google/gdata/util/common/base/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 9

    const/4 v8, 0x1

    const/16 v4, 0x7a

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v4, 0x1

    new-array v5, v7, [Z

    const/16 v1, 0x30

    :goto_1
    const/16 v7, 0x39

    if-gt v1, v7, :cond_1

    aput-boolean v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v7, 0x5a

    if-gt v1, v7, :cond_2

    aput-boolean v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x61

    :goto_3
    const/16 v7, 0x7a

    if-gt v1, v7, :cond_3

    aput-boolean v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-char v1, v0, v2

    aput-boolean v8, v5, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-object v5
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v3, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/gdata/util/common/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected escape(I)[C
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x25

    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->plusForSpace:Z

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/gdata/util/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    goto :goto_0

    :cond_1
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_2

    new-array v0, v6, [C

    aput-char v2, v0, v3

    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_3

    const/4 v1, 0x6

    new-array v0, v1, [C

    aput-char v2, v0, v3

    aput-char v2, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x4

    const/4 v1, 0x4

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x2

    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    ushr-int/lit8 p1, p1, 0x4

    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    or-int/lit8 v2, p1, 0xc

    aget-char v1, v1, v2

    aput-char v1, v0, v4

    goto :goto_0

    :cond_3
    const v1, 0xffff

    if-gt p1, v1, :cond_4

    const/16 v1, 0x9

    new-array v0, v1, [C

    aput-char v2, v0, v3

    const/16 v1, 0x45

    aput-char v1, v0, v4

    aput-char v2, v0, v6

    const/4 v1, 0x6

    aput-char v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x4

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x2

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x4

    const/4 v1, 0x4

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x2

    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    aget-char v1, v1, p1

    aput-char v1, v0, v5

    goto/16 :goto_0

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    const/16 v1, 0xc

    new-array v0, v1, [C

    aput-char v2, v0, v3

    const/16 v1, 0x46

    aput-char v1, v0, v4

    aput-char v2, v0, v6

    const/4 v1, 0x6

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x4

    const/16 v1, 0xa

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x2

    const/16 v1, 0x8

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x4

    const/4 v1, 0x7

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x2

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x4

    const/4 v1, 0x4

    sget-object v2, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v3, p1, 0x3

    or-int/lit8 v3, v3, 0x8

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 p1, p1, 0x2

    sget-object v1, Lcom/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid unicode character value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    :cond_0
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
