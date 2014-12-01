.class public Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
.super Ljava/lang/Object;
.source "HwKeyInfo.java"


# instance fields
.field private mAltgredChar:I

.field private mKeyIndex:I

.field private mLanguageID:Ljava/lang/String;

.field private mNormalChar:I

.field private mShiftedAltgredChar:I

.field private mShiftedlChar:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mLanguageID:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mKeyIndex:I

    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mNormalChar:I

    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedlChar:I

    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mAltgredChar:I

    iput v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedAltgredChar:I

    iput-object p1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mLanguageID:Ljava/lang/String;

    iput p2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mKeyIndex:I

    iput p3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mNormalChar:I

    iput p4, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedlChar:I

    iput p5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mAltgredChar:I

    iput p6, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedAltgredChar:I

    return-void
.end method


# virtual methods
.method public getAltgredChar()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mAltgredChar:I

    return v0
.end method

.method public getKeyIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mKeyIndex:I

    return v0
.end method

.method public getLanguageID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mLanguageID:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalChar()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mNormalChar:I

    return v0
.end method

.method public getShiftedAltgredChar()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedAltgredChar:I

    return v0
.end method

.method public getShiftedChar()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->mShiftedlChar:I

    return v0
.end method
