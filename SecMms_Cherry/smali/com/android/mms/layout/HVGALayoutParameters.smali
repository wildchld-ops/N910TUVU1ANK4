.class public Lcom/android/mms/layout/HVGALayoutParameters;
.super Ljava/lang/Object;
.source "HVGALayoutParameters.java"

# interfaces
.implements Lcom/android/mms/layout/LayoutParameters;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/HVGALayoutParameters"

.field private static mImageHeightLandscape:I

.field private static mImageHeightPortrait:I

.field private static mMaxHeight:I

.field private static mMaxWidth:I

.field private static mTextHeightLandscape:I

.field private static mTextHeightPortrait:I


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const v4, 0x3f666666

    const/high16 v3, 0x3f000000

    const v2, 0x3dcccccd

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    const/16 v1, 0xb

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad layout type detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput p2, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    sget v1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    sput v1, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightLandscape:I

    sget v1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightLandscape:I

    sget v1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    sput v1, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightPortrait:I

    sget v1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightPortrait:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightLandscape:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightPortrait:I

    goto :goto_0
.end method

.method public getTextHeight()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightLandscape:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightPortrait:I

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    return v0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "HVGA-L"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HVGA-P"

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    goto :goto_0
.end method
