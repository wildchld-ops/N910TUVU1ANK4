.class public Lcom/android/mms/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field static final SIZE_UNDEFINED:I = 0x0

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    iput-short p2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    iput p3, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    iput-boolean p5, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    iput p4, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOverflowForRational([Lcom/android/mms/exif/Rational;)Z
    .locals 10

    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    if-gez v3, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 7

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    const-wide v5, 0xffffffffL

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedRational([Lcom/android/mms/exif/Rational;)Z
    .locals 10

    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    const v4, 0xffff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1

    sget-object v0, Lcom/android/mms/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/mms/exif/ExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/mms/exif/ExifTag;

    iget-short v2, v0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    iget v3, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_0

    iget-short v2, v0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/mms/exif/Rational;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/mms/exif/Rational;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lcom/android/mms/exif/Rational;

    check-cast v1, [Lcom/android/mms/exif/Rational;

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/android/mms/exif/Rational;

    check-cast v2, [Lcom/android/mms/exif/Rational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    :cond_5
    iget-object v2, v0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public forceGetValueAsLong(J)J
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lt v3, v4, :cond_1

    aget-wide p1, v1, v7

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lt v3, v4, :cond_2

    aget-byte v3, v0, v7

    int-to-long p1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsRationals()[Lcom/android/mms/exif/Rational;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lt v3, v4, :cond_0

    aget-object v3, v2, v7

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    aget-object v3, v2, v7

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->toDouble()D

    move-result-wide v3

    double-to-long p1, v3

    goto :goto_0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v3, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v2

    if-nez v0, :cond_5

    const-string v1, ""

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    return-void
.end method

.method protected getBytes([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/exif/ExifTag;->getBytes([BII)V

    return-void
.end method

.method protected getBytes([BII)V
    .locals 3

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/mms/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_1

    iget p3, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getComponentCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/android/mms/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    iget v0, p0, Lcom/android/mms/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lcom/android/mms/exif/Rational;
    .locals 3

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/mms/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/mms/exif/Rational;

    check-cast v0, [Lcom/android/mms/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getString()Ljava/lang/String;
    .locals 3

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/mms/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method protected getStringByte()[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    iget-short v0, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsByte(B)B
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v1, 0x0

    aget-byte p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsInt(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsInts()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 v1, 0x0

    aget p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsInts()[I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v3, v3, [J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v3, [J

    move-object v2, v3

    check-cast v2, [J

    array-length v3, v2

    new-array v0, v3, [I

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-wide v3, v2, v1

    long-to-int v3, v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getValueAsLong(J)J
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-wide p1

    :cond_1
    const/4 v1, 0x0

    aget-wide p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsLongs()[J
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsRational(J)Lcom/android/mms/exif/Rational;
    .locals 3

    new-instance v0, Lcom/android/mms/exif/Rational;

    const-wide/16 v1, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/mms/exif/Rational;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifTag;->getValueAsRational(Lcom/android/mms/exif/Rational;)Lcom/android/mms/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getValueAsRational(Lcom/android/mms/exif/Rational;)Lcom/android/mms/exif/Rational;
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsRationals()[Lcom/android/mms/exif/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsRationals()[Lcom/android/mms/exif/Rational;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/android/mms/exif/Rational;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/mms/exif/Rational;

    check-cast v0, [Lcom/android/mms/exif/Rational;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method protected getValueAt(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/mms/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return-void
.end method

.method protected setIfd(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    return-void
.end method

.method protected setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/exif/ExifTag;->mOffset:I

    return-void
.end method

.method public setTimeValue(J)Z
    .locals 3

    sget-object v1, Lcom/android/mms/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(B)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(J)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method public setValue(Lcom/android/mms/exif/Rational;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/mms/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifTag;->setValue([Lcom/android/mms/exif/Rational;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 6

    const v5, 0xffff

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_2

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/android/mms/exif/ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :cond_3
    instance-of v3, p1, [I

    if-eqz v3, :cond_4

    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto :goto_0

    :cond_4
    instance-of v3, p1, [J

    if-eqz v3, :cond_5

    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifTag;->setValue([J)Z

    move-result v4

    goto :goto_0

    :cond_5
    instance-of v3, p1, Lcom/android/mms/exif/Rational;

    if-eqz v3, :cond_6

    check-cast p1, Lcom/android/mms/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifTag;->setValue(Lcom/android/mms/exif/Rational;)Z

    move-result v4

    goto :goto_0

    :cond_6
    instance-of v3, p1, [Lcom/android/mms/exif/Rational;

    if-eqz v3, :cond_7

    check-cast p1, [Lcom/android/mms/exif/Rational;

    check-cast p1, [Lcom/android/mms/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifTag;->setValue([Lcom/android/mms/exif/Rational;)Z

    move-result v4

    goto :goto_0

    :cond_7
    instance-of v3, p1, [B

    if-eqz v3, :cond_8

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifTag;->setValue([B)Z

    move-result v4

    goto :goto_0

    :cond_8
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/exif/ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    :cond_9
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_a

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/exif/ExifTag;->setValue(J)Z

    move-result v4

    goto :goto_0

    :cond_a
    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_b

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/exif/ExifTag;->setValue(B)Z

    move-result v4

    goto/16 :goto_0

    :cond_b
    instance-of v3, p1, [Ljava/lang/Short;

    if-eqz v3, :cond_e

    check-cast p1, [Ljava/lang/Short;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Short;

    array-length v3, v0

    new-array v1, v3, [I

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_d

    aget-object v3, v0, v2

    if-nez v3, :cond_c

    move v3, v4

    :goto_2
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    :cond_e
    instance-of v3, p1, [Ljava/lang/Integer;

    if-eqz v3, :cond_11

    check-cast p1, [Ljava/lang/Integer;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    array-length v3, v0

    new-array v1, v3, [I

    const/4 v2, 0x0

    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_10

    aget-object v3, v0, v2

    if-nez v3, :cond_f

    move v3, v4

    :goto_4
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    :cond_10
    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    :cond_11
    instance-of v3, p1, [Ljava/lang/Long;

    if-eqz v3, :cond_14

    check-cast p1, [Ljava/lang/Long;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Long;

    array-length v3, v0

    new-array v1, v3, [J

    const/4 v2, 0x0

    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_13

    aget-object v3, v0, v2

    if-nez v3, :cond_12

    const-wide/16 v3, 0x0

    :goto_6
    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifTag;->setValue([J)Z

    move-result v4

    goto/16 :goto_0

    :cond_14
    instance-of v3, p1, [Ljava/lang/Byte;

    if-eqz v3, :cond_0

    check-cast p1, [Ljava/lang/Byte;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Byte;

    array-length v3, v0

    new-array v1, v3, [B

    const/4 v2, 0x0

    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_16

    aget-object v3, v0, v2

    if-nez v3, :cond_15

    move v3, v4

    :goto_8
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_8

    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifTag;->setValue([B)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-short v5, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v5, v6, :cond_1

    iget-short v5, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v5, v7, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-object v5, Lcom/android/mms/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    move-object v2, v0

    array-length v5, v0

    if-lez v5, :cond_5

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    iget-short v5, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v5, v7, :cond_4

    :cond_2
    move-object v2, v0

    :cond_3
    :goto_1
    array-length v1, v2

    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v5

    if-nez v5, :cond_0

    iput v1, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    iput-object v2, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    move v3, v4

    goto :goto_0

    :cond_4
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-short v5, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    if-ne v5, v4, :cond_3

    new-array v2, v4, [B

    aput-byte v3, v2, v3

    goto :goto_1
.end method

.method public setValue([B)Z
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v2, v1, :cond_2

    iget-short v2, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    :cond_2
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    move v0, v1

    goto :goto_0
.end method

.method public setValue([I)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v3, v5, :cond_2

    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_0

    :cond_2
    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    iget-short v3, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    array-length v2, p1

    new-array v0, v2, [J

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    array-length v2, p1

    iput v2, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValue([J)Z
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    array-length v0, p1

    iput v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([Lcom/android/mms/exif/Rational;)Z
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/mms/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_2

    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_0

    :cond_2
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/android/mms/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/mms/exif/ExifTag;->checkOverflowForRational([Lcom/android/mms/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iput-object p1, p0, Lcom/android/mms/exif/ExifTag;->mValue:Ljava/lang/Object;

    array-length v0, p1

    iput v0, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/android/mms/exif/ExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/mms/exif/ExifTag;->mDataType:S

    invoke-static {v1}, Lcom/android/mms/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
