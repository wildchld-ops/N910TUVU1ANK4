.class public Lcom/android/incallui/extension/InCallUIExtension;
.super Ljava/lang/Object;
.source "InCallUIExtension.java"


# static fields
.field private static mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCscChameleonBit:I

.field private static mParser:Lcom/android/incallui/external/CscParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/incallui/extension/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCscChameleonFile()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/external/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/extension/InCallUIExtension;->existsCscChameleonFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    invoke-static {v0}, Lcom/android/incallui/external/CscParser;->getChameleonInstance(Ljava/lang/String;)Lcom/android/incallui/external/CscParser;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/extension/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    sget-object v1, Lcom/android/incallui/extension/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    if-eqz v1, :cond_0

    sget v1, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    :cond_0
    invoke-static {}, Lcom/android/incallui/extension/InCallUIExtension;->putCscChameleonDatabase()V

    return-void
.end method

.method private static cscChameleonEnable()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "csc_chameleon_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    sget v5, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    and-int/lit8 v5, v5, 0x3

    if-ne v4, v5, :cond_0

    move v0, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cscChameleonEnable - cscChameleonEnableFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cscChameleonBit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mCscChameleonBit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/incallui/extension/InCallUIExtension;->log(Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private static existsCscChameleonFile(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/extension/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/extension/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static isAbbreviatedDialingCodes(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/extension/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/extension/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InCallUIExtension"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private static putAbbreviatedDialingCodesDefaultTable()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "abbreviated_dialing_codes_table_sprint"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/android/incallui/extension/InCallUIExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v3, "abbreviated_dialing_codes_table_virgin"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    goto :goto_0

    :cond_2
    const-string v3, "abbreviated_dialing_codes_table_boost"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/android/incallui/extension/InCallUIExtension;->mCscChameleonBit:I

    goto :goto_0
.end method

.method private static putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/incallui/extension/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static putCscChameleonDatabase()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/extension/InCallUIExtension;->cscChameleonEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/extension/InCallUIExtension;->setAbbreviatedDialingCodesTable()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/extension/InCallUIExtension;->putAbbreviatedDialingCodesDefaultTable()V

    goto :goto_0
.end method

.method private static putGenericAbbreviatedDialingCodesTable()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/extension/InCallUIExtension;->putAbbreviatedDialingCodesTable([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static setAbbreviatedDialingCodesTable()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/extension/InCallUIExtension;->putGenericAbbreviatedDialingCodesTable()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/incallui/extension/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    if-eqz v7, :cond_1

    move-object v2, v1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    sget-object v7, Lcom/android/incallui/extension/InCallUIExtension;->mParser:Lcom/android/incallui/external/CscParser;

    invoke-virtual {v7, v0}, Lcom/android/incallui/external/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x2

    array-length v8, v6

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v10

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v11

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/incallui/extension/InCallUIExtension;->mAbbreviatedDialingCodesTable:Ljava/util/Hashtable;

    aget-object v8, v6, v10

    aget-object v9, v6, v11

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
