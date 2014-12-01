.class Landroid/view/GestureDetector$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmSweepRecognizer"
.end annotation


# instance fields
.field public final PALM_SWEEP_PROGRESS_SIZE:I

.field public final PALM_SWEEP_SIZE_TH:I

.field public final SWEEP_LEFT:I

.field public final SWEEP_RIGHT:I

.field public TILT_TO_ZOOM_XVAR:F

.field mArrIsValidWithTouchMajor:[Z

.field mArrMaxTouchMajor:[I

.field mArrSumSize:[I

.field mDiffx:F

.field mFalseSizeCnt:I

.field mLRSDCnt:I

.field mLRSizeDecreased:Z

.field mMoveXTH:I

.field private mPreSweepDown:Z

.field mScreenHeight:I

.field mScreenWidth:I

.field mSmeanX:F

.field mSmeanXpre:F

.field private mSweepDown:Z

.field mSweepInitDiffx:F

.field mSweepLeftReverseSum:F

.field mSweepRightReverseSum:F

.field mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    const/16 v0, 0x32

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->PALM_SWEEP_SIZE_TH:I

    const/16 v0, 0x23

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->PALM_SWEEP_PROGRESS_SIZE:I

    const/high16 v0, 0x43480000

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_RIGHT:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_LEFT:I

    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    return-void
.end method

.method static synthetic access$700(Landroid/view/GestureDetector$PalmSweepRecognizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    return v0
.end method

.method static synthetic access$702(Landroid/view/GestureDetector$PalmSweepRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    return p1
.end method

.method static synthetic access$800(Landroid/view/GestureDetector$PalmSweepRecognizer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method

.method static synthetic access$802(Landroid/view/GestureDetector$PalmSweepRecognizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return p1
.end method


# virtual methods
.method public CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 8

    const/high16 v5, 0x42480000

    const/high16 v4, 0x40000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    const/high16 v3, 0x42c80000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x42200000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-eqz v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v6

    add-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface touch Event] Palm swipe start, x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TILT_TO_ZOOM_XVAR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v5, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_4

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x420c0000

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v2, :cond_3

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    :cond_3
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    :cond_4
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    :cond_5
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    :cond_6
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    const/high16 v3, 0x43c80000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    :cond_7
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v6

    if-ge v0, v2, :cond_9

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v2, v2, v0

    aget v2, v2, v6

    iget-object v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v1

    aget v3, v3, v6

    if-le v2, v3, :cond_8

    move v1, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I
    .locals 3

    const/4 v0, 0x0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    float-to-int v1, v2

    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public Initialize()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v4, v4, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v4, v4, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    :cond_0
    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    iget v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    if-le v4, v5, :cond_1

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    int-to-float v4, v4

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    :goto_0
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    const/4 v4, -0x1

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    iput v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aput-boolean v6, v4, v1

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aput v6, v4, v1

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aput v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    int-to-float v4, v4

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 2

    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    :cond_0
    return-void
.end method

.method public RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 9

    const/high16 v4, 0x43960000

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v2, v2, Landroid/view/GestureDetector;->mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

    # getter for: Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v2}, Landroid/view/GestureDetector$PalmTouchRecognizer;->access$900(Landroid/view/GestureDetector$PalmTouchRecognizer;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    iget v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_8

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    if-lt v1, v6, :cond_8

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_5

    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v5}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    :cond_3
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    :cond_6
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_1

    :cond_7
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 1 - mSweepRightReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSweepLeftReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 2 - max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVarXBig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " validMajorCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I

    move-result v0

    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aget v1, v1, v0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    aput v2, v1, v0

    :cond_0
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    float-to-int v2, v2

    aput v2, v1, v0

    :cond_1
    return-void
.end method

.method public getSweepDown()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method
