.class public Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;
.super Ljava/lang/Object;
.source "AccentCombinationInfo.java"


# instance fields
.field private mAccentKey:I

.field private mCombinedChar:I

.field private mLanguageID:Ljava/lang/String;

.field private mNormalKey:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mLanguageID:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mAccentKey:I

    iput v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mNormalKey:I

    iput v1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mCombinedChar:I

    iput-object p1, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mLanguageID:Ljava/lang/String;

    iput p2, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mAccentKey:I

    iput p3, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mNormalKey:I

    iput p4, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mCombinedChar:I

    return-void
.end method


# virtual methods
.method public getAccentKey()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mAccentKey:I

    return v0
.end method

.method public getCombinedChar()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mCombinedChar:I

    return v0
.end method

.method public getLanguageID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mLanguageID:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalKey()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/accent/AccentCombinationInfo;->mNormalKey:I

    return v0
.end method
