.class public Lcom/android/mms/util/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/SmileyParser$Smileys;
    }
.end annotation


# static fields
.field public static final DEFAULT_SMILEY_NAMES:I = 0x7f080001

.field public static final DEFAULT_SMILEY_RES_IDS:[I

.field public static final DEFAULT_SMILEY_TEXTS:I = 0x7f080000

.field private static final TAG:Ljava/lang/String; = "Mms/SmileyParser"

.field private static sInstance:Lcom/android/mms/util/SmileyParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private mSmileyEnd:[I

.field private mSmileyStart:[I

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->HAPPY:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->SAD:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->WINKING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->TONGUE_STICKING_OUT:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->SURPRISED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->KISSING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->YELLING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->COOL:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->MONEY_MOUTH:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->FOOT_IN_MOUTH:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->EMBARRASSED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->ANGEL:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->UNDECIDED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->CRYING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->LIPS_ARE_SEALED:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->LAUGHING:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->WTF:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->MAD:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->HEART:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->SMIRK:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcom/android/mms/util/SmileyParser$Smileys;->POKERFACE:I

    invoke-static {v2}, Lcom/android/mms/util/SmileyParser$Smileys;->getSmileyResource(I)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/mms/util/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 8

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/util/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/android/mms/util/SmileyParser;
    .locals 1

    sget-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/SmileyParser"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/util/SmileyParser;

    invoke-direct {v0, p0}, Lcom/android/mms/util/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/SmileyParser;->sInstance:Lcom/android/mms/util/SmileyParser;

    return-void
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    new-array v7, v6, [I

    iput-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyStart:[I

    new-array v7, v6, [I

    iput-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyEnd:[I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v7, Landroid/text/style/ImageSpan;

    iget-object v8, p0, Lcom/android/mms/util/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v7, v8, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyStart:[I

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    aput v8, v7, v2

    iget-object v7, p0, Lcom/android/mms/util/SmileyParser;->mSmileyEnd:[I

    aput v1, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSmileyEnd()[I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyEnd:[I

    return-object v0
.end method

.method public getSmileyStart()[I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/SmileyParser;->mSmileyStart:[I

    return-object v0
.end method
