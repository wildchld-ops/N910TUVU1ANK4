.class public Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
.super Ljava/lang/Object;
.source "RecognizedStringWrapper.java"


# static fields
.field public static final NEW_STRING_IS_LEFT_POSITION:I = 0x1

.field public static final NEW_STRING_IS_RIGHT_POSITION:I = 0x2

.field public static final NEW_STRING_IS_RIGHT_POSITION_NO_SPACE:I = 0x3

.field private static final RATIO_PANEL_HEIGHT:D = 0.95


# instance fields
.field private final mAreaStartPoint:Landroid/graphics/PointF;

.field private mBaseline:F

.field private final mCharacter_None:Ljava/lang/String;

.field private final mCharacter_Space:Ljava/lang/String;

.field private mEndIndexOfChangeString:I

.field private mFontRosemary:Landroid/graphics/Typeface;

.field private mFontSize:I

.field private final mFontStartPoint:Landroid/graphics/PointF;

.field private mIsNeedSpace:Z

.field private mLeftPositionOfSelectString:F

.field private final mMinfont:I

.field private final mOverlapArea:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPanelBottom:I

.field private mPanelRight:I

.field private final mPermissibleRangeOfOverlapArea:D

.field private mRecognizedString:Ljava/lang/String;

.field private mRightPositionOfSelectString:F

.field private mSelectedTextRect:Landroid/graphics/Rect;

.field private mStartIndexOfChangeString:I

.field private final mStringArea:Landroid/graphics/RectF;

.field private final mWidthSpaceChar:I


# direct methods
.method constructor <init>()V
    .locals 5

    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    const-wide v0, 0x3fd47ae147ae147bL

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPermissibleRangeOfOverlapArea:D

    const-string v0, " "

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_Space:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_None:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mWidthSpaceChar:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mMinfont:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFFIILandroid/graphics/Typeface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    const/16 v4, 0x32

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    const-wide v0, 0x3fd47ae147ae147bL

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPermissibleRangeOfOverlapArea:D

    const-string v0, " "

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_Space:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mCharacter_None:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mWidthSpaceChar:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mMinfont:I

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iput p5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    iput p6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    iput-object p7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->resetModifyInformation()V

    invoke-direct {p0, p3, p4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStringArea()V

    return-void
.end method

.method private calculateRectSize(Landroid/graphics/RectF;)D
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method private getOverlapArea()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method private resetModifyInformation()V
    .locals 2

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "resetStartAndEndPoint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    return-void
.end method

.method private setStartAndEndPoint(II)V
    .locals 3

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartAndEndPoint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    return-void
.end method

.method private setStartPoint(FF)V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000

    div-float/2addr v1, v2

    sub-float v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private setStringArea()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    const/4 v14, 0x0

    const/high16 v13, 0x3f800000

    const-wide v11, 0x3fee666666666666L

    const/16 v10, 0x32

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStringArea offset.x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offset.y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStringArea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_7

    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v14

    if-gez v3, :cond_3

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_8

    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-lez v3, :cond_5

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_9

    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelBottom:I

    int-to-double v8, v8

    mul-double/2addr v8, v11

    sub-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v14

    if-gez v3, :cond_6

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    if-ge v3, v10, :cond_a

    iput v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v13

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-double v3, v3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_b

    new-instance v3, Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;

    invoke-direct {v3}, Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;-><init>()V

    throw v3

    :cond_7
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    move v1, v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v13

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartPoint(FF)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_3

    :cond_b
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v3, v13

    neg-float v3, v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end setStringArea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method


# virtual methods
.method public addNewString(Ljava/lang/String;Landroid/graphics/RectF;)I
    .locals 11

    const/high16 v10, -0x40800000

    const/4 v9, 0x0

    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SamsungIMEsetNewString"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNewString - newString : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v4, v6, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x0

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_1

    const-string v6, " "

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_2

    const/4 v2, 0x2

    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v7, v4, v1

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    :goto_2
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v6, ""

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_4

    const-string v6, " "

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_5

    const/4 v2, 0x2

    :goto_4
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v7, v4, v1

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    goto :goto_2

    :cond_4
    const-string v6, ""

    goto :goto_3

    :cond_5
    const/4 v2, 0x3

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v1

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    iget v6, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_8

    const-string v6, " "

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_9

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_8
    const-string v6, ""

    goto :goto_5

    :cond_9
    const/4 v2, 0x3

    goto/16 :goto_2

    :cond_a
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, p2, Landroid/graphics/RectF;->left:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iput v7, v6, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6, v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v6

    if-nez v6, :cond_c

    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6, v0}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_d

    const-string v6, " "

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_f

    const-string v6, " "

    :goto_8
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    if-eqz v6, :cond_10

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_d
    const-string v6, ""

    goto :goto_6

    :cond_e
    move-object v3, v5

    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    goto :goto_7

    :cond_f
    const-string v6, ""

    goto :goto_8

    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_2
.end method

.method public getBaseline()F
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mBaseline:F

    return v0
.end method

.method public getCalculatedOverlap()D
    .locals 2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getOverlapArea()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFontSize()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    return v0
.end method

.method public getFontStartPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getRecognizedString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedStringArea()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSelectedTextRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStartIndexOfChangeString()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    return v0
.end method

.method public getStringOnLongClick(Landroid/graphics/Point;)Ljava/lang/String;
    .locals 16

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v5, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v8, v11, Landroid/graphics/RectF;->left:F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput v8, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3dcccccd

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    const v15, 0x3dcccccd

    add-float/2addr v14, v15

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    add-float/2addr v8, v10

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v1, :cond_1

    move v4, v2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    :cond_0
    add-int/lit8 v11, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRightPositionOfSelectString:F

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    float-to-int v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mSelectedTextRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :goto_1
    return-object v11

    :cond_1
    add-int/lit8 v3, v2, 0x1

    add-float v11, v8, v10

    move-object/from16 v0, p0

    iput v11, v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mLeftPositionOfSelectString:F

    :cond_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    cmpg-float v11, v8, v11

    if-gez v11, :cond_4

    add-float v11, v8, v10

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public handleAwayGesture(Landroid/graphics/RectF;)Z
    .locals 14

    const/4 v10, 0x1

    const/high16 v13, 0x40000000

    const/4 v9, 0x0

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "SamsungIME"

    const-string v12, "handleAwayGesture"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v11, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v11, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v11}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    sub-float/2addr v6, v8

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget v11, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v6, v11

    if-lez v11, :cond_4

    sub-float v11, v6, v8

    iget v12, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    div-float v11, v8, v13

    sub-float v11, v6, v11

    iget v12, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return v9

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v1

    iput v11, v9, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iput v11, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    move v9, v10

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v0, v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v12, v0, 0x1

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_1

    add-float/2addr v5, v8

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget v11, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v11, v5, v11

    if-gez v11, :cond_7

    add-float v11, v5, v8

    iget v12, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    div-float v11, v8, v13

    add-float/2addr v11, v5

    iget v12, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_6

    if-eqz v0, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    move v9, v10

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-eq v0, v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v12, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v12, v0, 0x1

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public handleDeleteGesture(Landroid/graphics/RectF;I)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SamsungIME"

    const-string v6, "handleDeleteGesture"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xc

    if-ne p2, v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setDeleteOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    if-ne v5, v0, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    sub-int/2addr v5, v6

    if-le v5, v4, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, -0x2

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, -0x3

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    :goto_1
    return v4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_3
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public handleMergeGesture(Landroid/graphics/RectF;)Z
    .locals 13

    const/4 v8, 0x0

    const/4 v12, -0x1

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMergeGesture : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v3, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v7, v9, Landroid/graphics/RectF;->right:F

    const/4 v6, -0x1

    const/4 v5, -0x1

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v3, Landroid/graphics/RectF;->left:F

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    iget v9, v3, Landroid/graphics/RectF;->right:F

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    :goto_0
    iget v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    if-gt v0, v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-ne v6, v12, :cond_1

    move v6, v0

    :cond_1
    move v5, v0

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_2

    :cond_4
    if-eq v6, v12, :cond_6

    if-eq v5, v12, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v10, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    add-int/lit8 v10, v5, 0x1

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v9, v7, v1

    iput v9, v8, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iput v9, v8, Landroid/graphics/PointF;->x:F

    :cond_5
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    const/4 v8, 0x1

    :cond_6
    return v8
.end method

.method public handleSpaceGesture(Landroid/graphics/RectF;)Z
    .locals 8

    const/4 v5, 0x0

    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SamsungIME"

    const-string v7, "handleSpaceGesture"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v6, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-nez v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v6, v3, v0

    iput v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    :cond_1
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->resetModifyInformation()V

    const/4 v5, 0x1

    :cond_2
    return v5

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRTLText(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_5

    aget-char v2, v1, v0

    const/16 v3, 0x600

    if-lt v2, v3, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x6ff

    if-le v2, v3, :cond_3

    :cond_0
    aget-char v2, v1, v0

    const/16 v3, 0x590

    if-lt v2, v3, :cond_1

    aget-char v2, v1, v0

    const/16 v3, 0x5ff

    if-le v2, v3, :cond_3

    :cond_1
    aget-char v2, v1, v0

    const v3, 0xfb50

    if-lt v2, v3, :cond_2

    aget-char v2, v1, v0

    const v3, 0xfdff

    if-le v2, v3, :cond_3

    :cond_2
    aget-char v2, v1, v0

    const v3, 0xfe70

    if-lt v2, v3, :cond_4

    aget-char v2, v1, v0

    const v3, 0xfefc

    if-gt v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSameArea(Landroid/graphics/RectF;)Z
    .locals 10

    const v9, 0x3ea3d70a

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "isOverlap"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x42480000

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_1
    return v1

    :cond_1
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mIsNeedSpace:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v3, v3

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v5

    const-wide v7, 0x3fd47ae140000000L

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->calculateRectSize(Landroid/graphics/RectF;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    cmpl-float v3, v3, v9

    if-lez v3, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mOverlapArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    move v1, v2

    goto :goto_1
.end method

.method public isSameLine(Landroid/graphics/RectF;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v8, 0x3ea3d70a

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungIME"

    const-string v5, "isSameLine"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPanelRight:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-gez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public modifyRecognizedString(Ljava/lang/String;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNewString - newString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v3, v5, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-ne v5, v9, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    move-object v2, p1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    sub-float v6, v3, v1

    iput v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontStartPoint:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mAreaStartPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iput v6, v5, Landroid/graphics/PointF;->x:F

    :cond_1
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->resetModifyInformation()V

    return-void

    :cond_2
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-ne v5, v9, :cond_3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-eq v5, v9, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v0, ""

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiComposable(II)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_8

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    move-object v2, v4

    goto/16 :goto_0

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStartIndexOfChangeString:I

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mEndIndexOfChangeString:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public setDeleteOverlapStartAndEndPoint(Landroid/graphics/RectF;)V
    .locals 12

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    const-string v10, "setDeleteOverlapStartAndEndPoint"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v9, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v9, Landroid/graphics/RectF;->left:F

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-float/2addr v6, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_2

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    move v3, v1

    :cond_1
    iget v9, p1, Landroid/graphics/RectF;->right:F

    sub-float v10, v6, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v6, v9

    if-lez v9, :cond_3

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    move v0, v1

    iget v9, p1, Landroid/graphics/RectF;->left:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    sub-float v10, v6, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-float/2addr v5, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_8

    add-float v9, v5, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    const/4 v9, -0x1

    if-ne v3, v9, :cond_5

    move v3, v1

    :cond_5
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v9, 0x41

    if-lt v2, v9, :cond_6

    const/16 v9, 0x7a

    if-le v2, v9, :cond_7

    :cond_6
    const v9, 0xac00

    if-lt v2, v9, :cond_8

    const v9, 0xd7a3

    if-gt v2, v9, :cond_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_b

    add-float v9, v8, v5

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    move v0, v1

    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v5

    if-gez v9, :cond_b

    if-ge v3, v0, :cond_b

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_b

    const/16 v9, 0x41

    if-lt v2, v9, :cond_9

    const/16 v9, 0x7a

    if-le v2, v9, :cond_a

    :cond_9
    const v9, 0xac00

    if-lt v2, v9, :cond_b

    const v9, 0xd7a3

    if-gt v2, v9, :cond_b

    :cond_a
    add-int/lit8 v0, v0, -0x1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v3, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    return-void
.end method

.method public setOverlapStartAndEndPoint(Landroid/graphics/RectF;)V
    .locals 12

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    const-string v10, "getOverlapStartAndEndPoint"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v9, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v9, Landroid/graphics/RectF;->left:F

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-float/2addr v6, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_2

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    move v3, v1

    :cond_1
    iget v9, p1, Landroid/graphics/RectF;->right:F

    sub-float v10, v6, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v6, v9

    if-lez v9, :cond_3

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_3

    move v0, v1

    iget v9, p1, Landroid/graphics/RectF;->left:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    sub-float v10, v6, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-float/2addr v5, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_8

    add-float v9, v5, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    const/4 v9, -0x1

    if-ne v3, v9, :cond_5

    move v3, v1

    :cond_5
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v9, 0x41

    if-lt v2, v9, :cond_6

    const/16 v9, 0x7a

    if-le v2, v9, :cond_7

    :cond_6
    const v9, 0xac00

    if-lt v2, v9, :cond_8

    const v9, 0xd7a3

    if-gt v2, v9, :cond_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_b

    add-float v9, v8, v5

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    move v0, v1

    iget v9, p1, Landroid/graphics/RectF;->right:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    add-float/2addr v10, v5

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_b

    const/16 v9, 0x41

    if-lt v2, v9, :cond_9

    const/16 v9, 0x7a

    if-le v2, v9, :cond_a

    :cond_9
    const v9, 0xac00

    if-lt v2, v9, :cond_b

    const v9, 0xd7a3

    if-gt v2, v9, :cond_b

    :cond_a
    add-int/lit8 v0, v0, -0x1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v3, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    return-void
.end method

.method public setOverlapStartAndEndPoint(Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 12

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    const-string v10, "getOverlapStartAndEndPoint"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v5, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mStringArea:Landroid/graphics/RectF;

    iget v6, v9, Landroid/graphics/RectF;->right:F

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontRosemary:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mFontSize:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isRTLText(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_13

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-float/2addr v6, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_1

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move v3, v1

    :cond_1
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v6, v9

    if-lez v9, :cond_2

    sub-float v9, v6, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_13

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_4

    add-float/2addr v5, v8

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    :cond_4
    iget v9, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_b

    add-float v9, v5, v8

    iget v10, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    const/4 v9, -0x1

    if-ne v3, v9, :cond_5

    move v3, v1

    :cond_5
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3ea3d70a

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_11

    const/16 v9, 0x41

    if-lt v2, v9, :cond_6

    const/16 v9, 0x7a

    if-le v2, v9, :cond_a

    :cond_6
    const/16 v9, 0xc0

    if-lt v2, v9, :cond_7

    const/16 v9, 0x17e

    if-le v2, v9, :cond_a

    :cond_7
    const/16 v9, 0x1ea0

    if-lt v2, v9, :cond_8

    const/16 v9, 0x1ef9

    if-le v2, v9, :cond_a

    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_9

    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    const v9, 0xac00

    if-lt v2, v9, :cond_11

    const v9, 0xd7a3

    if-gt v2, v9, :cond_11

    :cond_a
    add-int/lit8 v3, v3, 0x1

    :cond_b
    :goto_2
    iget v9, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_10

    add-float v9, v8, v5

    iget v10, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_10

    move v0, v1

    iget v9, p1, Landroid/graphics/RectF;->right:F

    const v10, 0x3ea3d70a

    mul-float/2addr v10, v8

    add-float/2addr v10, v5

    cmpg-float v9, v9, v10

    if-gez v9, :cond_10

    const/16 v9, 0x41

    if-lt v2, v9, :cond_c

    const/16 v9, 0x7a

    if-le v2, v9, :cond_f

    :cond_c
    const/16 v9, 0xc0

    if-lt v2, v9, :cond_d

    const/16 v9, 0x17e

    if-le v2, v9, :cond_f

    :cond_d
    const/16 v9, 0x1ea0

    if-lt v2, v9, :cond_e

    const/16 v9, 0x1ef9

    if-le v2, v9, :cond_f

    :cond_e
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v9

    if-nez v9, :cond_f

    const v9, 0xac00

    if-lt v2, v9, :cond_10

    const v9, 0xd7a3

    if-gt v2, v9, :cond_10

    :cond_f
    add-int/lit8 v0, v0, -0x1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_11
    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_12

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_12
    iget v9, p1, Landroid/graphics/RectF;->left:F

    add-float v10, v5, v8

    const v11, 0x3f2e147b

    mul-float/2addr v11, v8

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v9

    if-eqz v9, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_13
    invoke-direct {p0, v3, v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStartAndEndPoint(II)V

    return-void
.end method

.method public setRecognizedString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setStringArea()V
    :try_end_0
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->mRecognizedString:Ljava/lang/String;

    return-object v0
.end method
