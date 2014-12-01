.class public Lcom/diotek/ime/framework/common/Language;
.super Ljava/lang/Object;
.source "Language.java"


# static fields
.field public static final SCRIPT_TYPE_ARABIC:I = 0x4

.field public static final SCRIPT_TYPE_ARMANIAN:I = 0x5

.field public static final SCRIPT_TYPE_AZERBAIJANI:I = 0x16

.field public static final SCRIPT_TYPE_BENGALI:I = 0xd

.field public static final SCRIPT_TYPE_CHINESE:I = 0xa

.field public static final SCRIPT_TYPE_CYRL:I = 0x2

.field public static final SCRIPT_TYPE_DEVNAGARI:I = 0xc

.field public static final SCRIPT_TYPE_GEORGIAN:I = 0x6

.field public static final SCRIPT_TYPE_GREEK:I = 0x7

.field public static final SCRIPT_TYPE_GUJARATI:I = 0xe

.field public static final SCRIPT_TYPE_HEBREW:I = 0x8

.field public static final SCRIPT_TYPE_JAPANESE:I = 0xb

.field public static final SCRIPT_TYPE_KANNADA:I = 0xf

.field public static final SCRIPT_TYPE_KHMER:I = 0x18

.field public static final SCRIPT_TYPE_KOREAN:I = 0x0

.field public static final SCRIPT_TYPE_LAO:I = 0x19

.field public static final SCRIPT_TYPE_LATIN:I = 0x1

.field public static final SCRIPT_TYPE_MALAYALAM:I = 0x10

.field public static final SCRIPT_TYPE_MARATHI:I = 0x11

.field public static final SCRIPT_TYPE_NONRDIC:I = 0x3

.field public static final SCRIPT_TYPE_ORIYA:I = 0x1b

.field public static final SCRIPT_TYPE_PUNJABI:I = 0x12

.field public static final SCRIPT_TYPE_SINHALA:I = 0x13

.field public static final SCRIPT_TYPE_SLOVENIAN:I = 0x17

.field public static final SCRIPT_TYPE_TAMIL:I = 0x15

.field public static final SCRIPT_TYPE_TELUGU:I = 0x14

.field public static final SCRIPT_TYPE_THAI:I = 0x9

.field public static final SCRIPT_TYPE_TURKMEN:I = 0x1c

.field public static final SCRIPT_TYPE_UZBEK:I = 0x1e

.field public static final SCRIPT_TYPE_VIETNAMESE:I = 0x1d

.field public static final SCRIPT_TYPE_ZAWGYI:I = 0x1a


# instance fields
.field private mAutoReplacementOn:Z

.field private mCountryCode:Ljava/lang/String;

.field private mDefault:Z

.field private mHasShift:Z

.field private mId:I

.field private mInputMethodSubType:I

.field private mLanguageCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mScriptType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/common/Language;->mCountryCode:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/common/Language;->mId:I

    iput-object v2, p0, Lcom/diotek/ime/framework/common/Language;->mName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/Language;->mDefault:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/Language;->mHasShift:Z

    iput v1, p0, Lcom/diotek/ime/framework/common/Language;->mScriptType:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/Language;->mAutoReplacementOn:Z

    iput v1, p0, Lcom/diotek/ime/framework/common/Language;->mInputMethodSubType:I

    iput-object p1, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/diotek/ime/framework/common/Language;->mCountryCode:Ljava/lang/String;

    iput p3, p0, Lcom/diotek/ime/framework/common/Language;->mId:I

    iput-object p4, p0, Lcom/diotek/ime/framework/common/Language;->mName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/diotek/ime/framework/common/Language;->mDefault:Z

    iput-boolean p6, p0, Lcom/diotek/ime/framework/common/Language;->mHasShift:Z

    iput p7, p0, Lcom/diotek/ime/framework/common/Language;->mScriptType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZIZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/common/Language;->mCountryCode:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/common/Language;->mId:I

    iput-object v2, p0, Lcom/diotek/ime/framework/common/Language;->mName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/Language;->mDefault:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/Language;->mHasShift:Z

    iput v1, p0, Lcom/diotek/ime/framework/common/Language;->mScriptType:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/common/Language;->mAutoReplacementOn:Z

    iput v1, p0, Lcom/diotek/ime/framework/common/Language;->mInputMethodSubType:I

    iput-object p1, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/diotek/ime/framework/common/Language;->mCountryCode:Ljava/lang/String;

    iput p3, p0, Lcom/diotek/ime/framework/common/Language;->mId:I

    iput-object p4, p0, Lcom/diotek/ime/framework/common/Language;->mName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/diotek/ime/framework/common/Language;->mDefault:Z

    iput-boolean p6, p0, Lcom/diotek/ime/framework/common/Language;->mHasShift:Z

    iput p7, p0, Lcom/diotek/ime/framework/common/Language;->mScriptType:I

    iput-boolean p8, p0, Lcom/diotek/ime/framework/common/Language;->mAutoReplacementOn:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/diotek/ime/framework/common/Language;

    iget v3, p0, Lcom/diotek/ime/framework/common/Language;->mId:I

    iget v4, v0, Lcom/diotek/ime/framework/common/Language;->mId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAutoReplacementOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/Language;->mAutoReplacementOn:Z

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/Language;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/Language;->mId:I

    return v0
.end method

.method public getInputMethodSubtype()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/Language;->mInputMethodSubType:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    const-string v0, "iw"

    iget-object v1, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "he"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageCodeForPHONEPAD()Ljava/lang/String;
    .locals 2

    const-string v0, "ko"

    iget-object v1, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kr"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/Language;->mLanguageCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocaleCode()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/Language;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptType()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/Language;->mScriptType:I

    return v0
.end method

.method public hasShift()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/Language;->mHasShift:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Lcom/diotek/ime/framework/common/Language;->mId:I

    add-int/lit8 v1, v2, 0x1f

    return v1
.end method

.method public isDefaultLanguage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/Language;->mDefault:Z

    return v0
.end method

.method public setAutoReplacement(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/common/Language;->mAutoReplacementOn:Z

    return-void
.end method

.method public setInputMethodSubType(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/common/Language;->mInputMethodSubType:I

    return-void
.end method
