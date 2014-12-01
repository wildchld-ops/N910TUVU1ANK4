.class final Landroid/provider/GeocodedLocation$PhoneNumber;
.super Ljava/lang/Object;
.source "GeocodedLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/GeocodedLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhoneNumber"
.end annotation


# instance fields
.field private actualNumber:Ljava/lang/String;

.field private type:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->type:I

    iput-object p2, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->actualNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;
    .locals 1

    invoke-static {p0, p1}, Landroid/provider/GeocodedLocation$PhoneNumber;->getActualPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/provider/GeocodedLocation$PhoneNumber;)I
    .locals 1

    iget v0, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->type:I

    return v0
.end method

.method static synthetic access$200(Landroid/provider/GeocodedLocation$PhoneNumber;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/provider/GeocodedLocation$PhoneNumber;->actualNumber:Ljava/lang/String;

    return-object v0
.end method

.method private static getActualPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/provider/GeocodedLocation$PhoneNumber;->getChineseActualPhoneNumber(Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/provider/GeocodedLocation$PhoneNumber;->getChineseActualPhoneNumber(Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;

    move-result-object v2

    goto :goto_0
.end method

.method private static getChineseActualPhoneNumber(Ljava/lang/String;)Landroid/provider/GeocodedLocation$PhoneNumber;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/16 v7, 0x30

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xb

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "13"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "15"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "18"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Landroid/provider/GeocodedLocation$PhoneNumber;

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Landroid/provider/GeocodedLocation$PhoneNumber;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, -0x1

    array-length v4, v1

    if-gt v4, v9, :cond_2

    aget-char v4, v1, v6

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6

    :cond_2
    array-length v4, v1

    add-int/lit8 v4, v4, -0xc

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x6

    if-gt v2, v4, :cond_3

    aget-char v4, v1, v2

    if-ne v4, v7, :cond_5

    add-int/lit8 v4, v2, 0x1

    aget-char v4, v1, v4

    if-eq v4, v7, :cond_5

    move v0, v2

    :cond_3
    :goto_2
    const/4 v4, -0x1

    if-eq v0, v4, :cond_8

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v1, v4

    const/16 v5, 0x31

    if-eq v4, v5, :cond_4

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v1, v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_7

    :cond_4
    new-instance v4, Landroid/provider/GeocodedLocation$PhoneNumber;

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/provider/GeocodedLocation$PhoneNumber;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    array-length v4, v1

    const/4 v5, 0x6

    if-lt v4, v5, :cond_3

    aget-char v4, v1, v6

    if-ne v4, v7, :cond_3

    aget-char v4, v1, v8

    if-eq v4, v7, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    new-instance v4, Landroid/provider/GeocodedLocation$PhoneNumber;

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/provider/GeocodedLocation$PhoneNumber;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_0
.end method
