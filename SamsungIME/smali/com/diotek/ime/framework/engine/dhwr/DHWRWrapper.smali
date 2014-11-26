.class public Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "DHWRWrapper.java"


# static fields
.field private static final FIO_BUFFER_SIZE:I = 0x100000

.field private static final MIN_TEXT_FONTSIZE:I = 0x1e

.field private static final SHOW_TOAST:I


# instance fields
.field private final CHINESE_GESTURE_SPACE:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

.field private mBSetUserChar:Z

.field private mChangedArrayIndex:I

.field private mChangedTextEndIndex:I

.field private mChangedTextStartIndex:I

.field private mCompleteStringFont:Landroid/graphics/Typeface;

.field private mEngineLang:I

.field private mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mHWInputMode:J

.field private final mHWRAutoSpaceInset:Z

.field private mHWRHangulJohapUse:Z

.field mHandler:Landroid/os/Handler;

.field private mHwrPanelRect:Landroid/graphics/Rect;

.field private mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

.field mInkRect:Landroid/graphics/RectF;

.field protected mIsLoadedHDICfile:Z

.field private mIsMixRecognition:Z

.field private mIsValidModel:Z

.field private mLastKeyTime:J

.field private mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

.field private mRtThai:Landroid/graphics/RectF;

.field private mSelectedArrayIndex:I

.field private final mStrRect:Landroid/graphics/RectF;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadWriting:Z

.field mToastHandler:Landroid/os/Handler;

.field private final mWidthSpaceChar:I

.field private final pointList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    const/16 v0, 0x1f

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->CHINESE_GESTURE_SPACE:I

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWRAutoSpaceInset:Z

    sget v0, Lcom/diotek/dhwr/DHWR;->DTYPE_CURSIVE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mEngineLang:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsMixRecognition:Z

    const/16 v0, 0x32

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mWidthSpaceChar:I

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mLastKeyTime:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->pointList:Ljava/util/Queue;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsLoadedHDICfile:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$2;-><init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$3;-><init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mToastHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    iput v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    iput v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsLoadedHDICfile:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->init()I

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyAssetDBFiletoSystem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isUnitRecongnitionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearRecognitionResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)I
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;ILandroid/graphics/RectF;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;
    .param p1    # I
    .param p2    # Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearHwrPathController()V

    return-void
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method private addPoint(SS)Z
    .locals 4
    .param p1    # S
    .param p2    # S

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/diotek/dhwr/DHWR;->AddPoint(SS)I

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHWR.AddPoint ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private addPoint(SSZ)Z
    .locals 1
    .param p1    # S
    .param p2    # S
    .param p3    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    invoke-interface {v0, p3}, Lcom/diotek/ime/framework/engine/dhwr/AddStroke;->onStartAddStroke(Z)V

    :cond_0
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SS)Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->endStroke()V

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    invoke-interface {v0, p3}, Lcom/diotek/ime/framework/engine/dhwr/AddStroke;->onEndAddStroke(Z)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SS)Z

    goto :goto_0
.end method

.method private changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/RectF;
    .param p3    # I
    .param p4    # F

    const/16 v8, 0x79

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isConfusedStringUpperAndLowerCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v0, v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_5

    div-float v3, v0, v1

    float-to-double v3, v3

    const-wide v5, 0x3fdccccccccccccdL

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, p4

    if-lez v3, :cond_5

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private changeLastRecognizedStringByForce(Ljava/lang/String;)V
    .locals 13
    .param p1    # Ljava/lang/String;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v3

    const/16 v10, 0x7c

    if-eq v3, v10, :cond_1

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v10, v0, -0x1

    iget v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_2

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, ""

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v10

    if-eqz v10, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    iput v11, v10, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    div-int/lit8 v11, v11, 0x5

    int-to-float v11, v11

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    invoke-direct {p0, v10, p1, v11}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const-string v1, ""

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v6, ""

    const-string v9, ""

    const/4 v7, 0x0

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    if-nez v10, :cond_6

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_6

    move-object v7, p1

    :goto_2
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v10, v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setRecognizedString(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_6
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    if-lez v10, :cond_7

    const/4 v10, 0x0

    iget v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_7
    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_8

    iget v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private changeRecognizedStringBySuggestion(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    iput v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    goto :goto_0
.end method

.method private changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    const/4 v1, 0x1

    :goto_0
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v3, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v3, v3, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private changeSuggestionRankOnFirstCandidateIsNumber()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isNumberString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isNumberString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v4, v4, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private changeUpperLowerCase()V
    .locals 11

    const/4 v10, 0x0

    new-instance v2, Ljava/util/ArrayList;

    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v1, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isConfusedStringUpperAndLowerCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/dhwr/DHWR;->CheckWordInDict([C)I

    move-result v8

    if-nez v8, :cond_2

    const/4 v4, 0x1

    :goto_2
    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object v8, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v8, v8, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private checkAwayGesture()Z
    .locals 29

    new-instance v16, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v12, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int v19, v19, v20

    div-int/lit8 v5, v19, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    add-int v19, v19, v20

    div-int/lit8 v6, v19, 0x2

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-int/lit8 v22, v6, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const v4, 0x3e4ccccd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/4 v8, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v14, v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isSameArea(Landroid/graphics/RectF;)Z

    move-result v19

    if-eqz v19, :cond_4

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v18, 0x0

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v19

    move-object/from16 v0, v19

    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_3

    add-float v9, v9, v18

    invoke-virtual {v14}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    invoke-static {v11}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    mul-float v20, v18, v4

    add-float v20, v20, v9

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    float-to-double v0, v9

    move-wide/from16 v21, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3ff0000000000000L

    float-to-double v0, v4

    move-wide/from16 v27, v0

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    add-double v21, v21, v23

    cmpg-double v19, v19, v21

    if-gez v19, :cond_2

    const/16 v19, 0x0

    :goto_2
    return v19

    :cond_2
    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    cmpg-float v19, v19, v9

    if-gez v19, :cond_0

    :cond_3
    const/16 v19, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private checkSpaceGestureInEmailField()Z
    .locals 5

    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3, v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getFirstPoint(I)Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    new-instance v0, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3, v2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getLastPoint(I)Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    const/16 v4, 0x32

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private clearHwrPathController()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    return-void
.end method

.method private clearInk()V
    .locals 0

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->InkClear()I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetInkCount()Z

    return-void
.end method

.method private clearRecognitionResult()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    return-void
.end method

.method private clearRecognizedStringReset()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private copyAssetDBFiletoSystem(Ljava/lang/String;)V
    .locals 20
    .param p1    # Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/16 v16, 0x0

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v15, -0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_0
    const/high16 v17, 0x100000

    move/from16 v0, v17

    new-array v8, v0, [B

    if-eqz v16, :cond_9

    move-object/from16 v3, v16

    array-length v13, v3

    const/4 v12, 0x0

    move-object v7, v6

    move-object v5, v4

    :goto_1
    if-ge v12, v13, :cond_8

    aget-object v10, v3, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isExistFile(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_a

    const-string v17, "SamsungIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyAssetDBFiletoSystem() File exist : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    move-object v4, v5

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object v7, v6

    move-object v5, v4

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-static {v9}, Lcom/diotek/ime/framework/util/Debug;->printCallStack(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_1

    const-string v17, "SamsungIME"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "copyAssetDBFiletoSystem() Copy file : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v14, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    const/16 v17, 0x0

    const/high16 v18, 0x100000

    :try_start_3
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v8, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_4

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v8, v0, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v9

    :goto_4
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_5
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v17

    move-object v6, v7

    move-object v4, v5

    :goto_6
    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_7
    :goto_7
    throw v17

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :cond_8
    move-object v6, v7

    move-object v4, v5

    :cond_9
    return-void

    :catchall_1
    move-exception v17

    move-object v6, v7

    goto :goto_6

    :catchall_2
    move-exception v17

    goto :goto_6

    :catch_5
    move-exception v9

    move-object v6, v7

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v9

    move-object v6, v7

    goto :goto_4

    :cond_a
    move-object v6, v7

    move-object v4, v5

    goto/16 :goto_2
.end method

.method private copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "copyRecognizedClass()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyRecognizedString : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", copyRecognizedArea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private deleteStrokeOfHwrPathController(I)Landroid/graphics/RectF;
    .locals 4
    .param p1    # I

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -> deleteStrokeOfHwrPathController - num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mHwrPathController : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getMaxIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->delete(ID)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private endStroke()V
    .locals 0

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->EndStroke()I

    return-void
.end method

.method private getEngineLanguage()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mEngineLang:I

    return v0
.end method

.method private getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;)I
    .locals 13
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/graphics/RectF;

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v1, v10

    :cond_0
    :goto_0
    const/16 v10, 0x1e

    if-ge v1, v10, :cond_1

    const/16 v1, 0x1e

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/4 v8, 0x0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, p1

    const/16 v4, 0x1e

    move v1, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v3, v10

    add-int v10, v4, v3

    div-int/lit8 v6, v10, 0x2

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_3
    :goto_1
    int-to-float v10, v6

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v7, v10, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v8, v10

    cmpl-float v10, v9, v8

    if-nez v10, :cond_4

    move v1, v6

    goto :goto_0

    :cond_4
    sub-int v10, v4, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v12, :cond_6

    if-eqz v2, :cond_5

    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    cmpg-float v10, v9, v8

    if-gez v10, :cond_7

    move v3, v6

    add-int v10, v4, v3

    div-int/lit8 v6, v10, 0x2

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    cmpl-float v10, v9, v8

    if-lez v10, :cond_3

    move v4, v6

    add-int v10, v4, v3

    div-int/lit8 v6, v10, 0x2

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleAutoSpaceInset()V
    .locals 4

    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    sget v2, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    return-void
.end method

.method private handleHangulRecogMode()V
    .locals 4

    const-wide/16 v2, 0x65

    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWRHangulJohapUse:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    sget v2, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    sget v2, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    xor-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHWInputMode:J

    goto :goto_0
.end method

.method private handleHwrSettingValue()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->handleHangulRecogMode()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->handleAutoSpaceInset()V

    return-void
.end method

.method private increaseInkCount(SS)Z
    .locals 1
    .param p1    # S
    .param p2    # S

    const/4 v0, 0x1

    return v0
.end method

.method private isConfusedStringUpperAndLowerCase(Ljava/lang/String;)Z
    .locals 11
    .param p1    # Ljava/lang/String;

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    const-string v0, "ckmnopsuvwxyz"

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_3

    const-string v8, "ckmnopsuvwxyz"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v10, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    :cond_5
    const-string v8, "ckmnopsuvwxyz"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v10, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_0

    and-int v8, v4, v3

    if-eqz v8, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method private isExistFile(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isMixRecognition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsMixRecognition:Z

    return v0
.end method

.method private isNumRecognitionMode()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNumberString(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUnitRecongnitionMode()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadHDICOnThread()V
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper$1;-><init>(Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private makeRecongnitionSuggestion()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->makeSuggestion(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private makeSuggestion(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/dhwr/DHWR$Candidate;",
            ">;)V"
        }
    .end annotation

    const/16 v9, 0x14

    const/4 v8, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    if-nez v5, :cond_3

    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_2

    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_2

    :cond_4
    const-string v1, ""

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_5

    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v1, ""

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_0

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private recognizeCompleteMode(Z)I
    .locals 19
    .param p1    # Z

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string v15, "SamsungIME"

    const-string v16, "recognizeThread()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v11, 0x0

    const/16 v15, 0x20

    :try_start_0
    const-string v16, "0"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttribute()V

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    const/4 v12, -0x1

    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->threadSafeRecog(Z)I

    move-result v12

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_1

    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "threadSafeRecog("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") ret : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v12, :cond_c

    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-nez v15, :cond_3

    const/16 v11, 0xbbc

    :cond_2
    :goto_0
    return v11

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeUpperLowerCase()V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v15

    const/16 v16, 0x7c

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionRankOnFirstCandidateIsNumber()V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->makeRecongnitionSuggestion()V

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    const/4 v7, 0x0

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    const/4 v6, 0x0

    :goto_1
    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_8

    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/dhwr/DHWR$Candidate;

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_5

    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "complete : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v2, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    iget v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->stroke_:I

    add-int/2addr v14, v15

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_6

    const-string v16, "SamsungIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "+ cand.candlist_.get(0) : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " / rt : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v15, v2, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v6, v15, :cond_7

    const-string v15, " "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_8
    if-eqz p1, :cond_e

    add-int/lit8 v15, v14, 0x1

    sub-int/2addr v15, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->deleteStrokeOfHwrPathController(I)Landroid/graphics/RectF;

    move-result-object v13

    :goto_2
    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v13}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    if-ne v7, v15, :cond_9

    iget v15, v13, Landroid/graphics/RectF;->right:F

    const/high16 v16, 0x3f800000

    add-float v15, v15, v16

    iput v15, v13, Landroid/graphics/RectF;->right:F

    iget v15, v13, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f800000

    add-float v15, v15, v16

    iput v15, v13, Landroid/graphics/RectF;->bottom:F

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v13}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V

    :goto_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRtThai:Landroid/graphics/RectF;

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_a

    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "rt.top : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "rt.left : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "rt.bottom : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "rt.right : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    :cond_b
    if-lez v7, :cond_c

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mInkRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/16 v11, 0xbba

    :cond_c
    :goto_4
    if-gtz v11, :cond_2

    :cond_d
    :goto_5
    const/16 v11, 0xbbc

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v15, v14, 0x1

    sub-int/2addr v15, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->rectOfRecognizeStroke(II)Landroid/graphics/RectF;

    move-result-object v13

    goto/16 :goto_2

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V
    :try_end_0
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    :catch_0
    move-exception v3

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v15, :cond_10

    const-string v15, "SamsungIME"

    const-string v16, "Cannot set string on here"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_d

    goto :goto_5

    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v13}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V
    :try_end_1
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v4

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_d

    const-string v15, "SamsungIME"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "recognizeThread : exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_12
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v17, 0x1f4

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mLastKeyTime:J

    sub-long v15, v8, v15

    int-to-long v0, v5

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-lez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->copyRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mLastKeyTime:J

    const/16 v11, 0xbb9

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getCurrentRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4
.end method

.method private recognizeGesture([C)I
    .locals 7
    .param p1    # [C

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    invoke-static {v6}, Lcom/diotek/dhwr/DHWR;->Recognize(Z)I

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->showLicenseToast()V

    :cond_2
    if-nez v1, :cond_0

    sget-object v2, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    sget-object v2, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/dhwr/DHWR$Candidate;

    iget v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->complete_:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :cond_3
    :sswitch_0
    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p1, v5

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v3, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gesture:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v0, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private recognizeGestureAll()I
    .locals 11

    const/16 v10, 0x20

    const/16 v9, 0x8

    const/4 v6, 0x0

    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "SamsungIME"

    const-string v8, "recognizeGestureAll()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    const/16 v7, 0xd2

    new-array v0, v7, [C

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeGesture()V

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeGesture([C)I

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return v6

    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v3

    const/16 v7, 0x74

    if-eq v3, v7, :cond_2

    const/16 v7, 0x75

    if-eq v3, v7, :cond_2

    const/16 v7, 0x76

    if-eq v3, v7, :cond_2

    const/16 v7, 0x7b

    if-ne v3, v7, :cond_3

    :cond_2
    aget-char v7, v0, v6

    if-ne v7, v9, :cond_4

    aput-char v10, v0, v6

    :cond_3
    :goto_1
    aget-char v6, v0, v6

    sparse-switch v6, :sswitch_data_0

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_4
    aget-char v7, v0, v6

    if-ne v7, v10, :cond_3

    aput-char v9, v0, v6

    goto :goto_1

    :sswitch_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v5, 0x7d1

    goto :goto_2

    :cond_5
    const/16 v5, 0x7d2

    goto :goto_2

    :sswitch_1
    const/16 v5, 0x7d3

    goto :goto_2

    :sswitch_2
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    iget v6, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v6, 0xff0

    iget v6, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v6, 0xf

    packed-switch v1, :pswitch_data_0

    :cond_6
    :goto_3
    :pswitch_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v5, 0x7d4

    goto :goto_2

    :pswitch_1
    const/4 v5, 0x0

    goto :goto_3

    :pswitch_2
    sparse-switch v2, :sswitch_data_1

    goto :goto_3

    :sswitch_3
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->checkSpaceGestureInEmailField()Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    const/16 v5, 0x7d5

    goto :goto_2

    :sswitch_4
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v5, 0x7d6

    goto :goto_2

    :cond_8
    const/16 v5, 0x7d7

    goto :goto_2

    :sswitch_5
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v5, 0x7d8

    goto :goto_2

    :cond_9
    const/16 v5, 0x7d9

    goto :goto_2

    :sswitch_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->checkAwayGesture()Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v5, 0x7db

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x5 -> :sswitch_6
        0x8 -> :sswitch_0
        0xc -> :sswitch_4
        0xd -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method private recognizeUnitMode(Z)I
    .locals 7
    .param p1    # Z

    const/16 v3, 0xbbc

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungIME"

    const-string v5, "recognizeThread()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/16 v4, 0x20

    :try_start_0
    const-string v5, "1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttribute()V

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->ClearCandidateList()V

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->threadSafeRecog(Z)I

    move-result v2

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadSafeRecog("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v2, :cond_6

    sget-object v4, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    move v1, v3

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeUpperLowerCase()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v4

    const/16 v5, 0x7c

    if-eq v4, v5, :cond_4

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionRankOnFirstCandidateIsNumber()V

    :cond_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->makeRecongnitionSuggestion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    const/16 v1, 0xbba

    goto :goto_0

    :cond_5
    const/16 v1, 0xbb9

    goto :goto_0

    :cond_6
    if-gtz v1, :cond_2

    :cond_7
    :goto_1
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recognizeThread : exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private rectOfRecognizeStroke(II)Landroid/graphics/RectF;
    .locals 4
    .param p1    # I
    .param p2    # I

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -> rectOfRecognizeStroke - num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mHwrPathController : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getMaxIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->rectOfRecognizeStroke(IDI)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private releaseDHWRUserCharSet()V
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->FreeUserCharSet()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_0
.end method

.method private resetChangedTextIndex()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    return-void
.end method

.method private resetInkCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private setChangedTextIndex(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    iput p2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    iput p3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedArrayIndex:I

    return-void
.end method

.method private setDHWRUserCharSet()Z
    .locals 12

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x7

    new-array v3, v10, [C

    fill-array-data v3, :array_0

    const/4 v10, 0x6

    new-array v4, v10, [C

    fill-array-data v4, :array_1

    const/4 v10, 0x3

    new-array v9, v10, [C

    fill-array-data v9, :array_2

    const/4 v10, 0x4

    new-array v6, v10, [C

    fill-array-data v6, :array_3

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    iget v10, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v10, 0xff0

    iget v10, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v10, 0xf

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v0, v3

    :goto_0
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3002

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_0
    array-length v10, v0

    invoke-static {v0, v10}, Lcom/diotek/dhwr/DHWR;->SetUserCharSet([CI)I

    move-result v7

    if-nez v7, :cond_1

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    :goto_1
    iget-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    return v10

    :pswitch_1
    move-object v0, v6

    goto :goto_0

    :pswitch_2
    sparse-switch v2, :sswitch_data_0

    move-object v0, v3

    goto :goto_0

    :sswitch_0
    move-object v0, v4

    goto :goto_0

    :sswitch_1
    move-object v0, v9

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x3fs
        0x2es
        0x2cs
        0x21s
        0x40s
        0x23s
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x40s
        0x2es
        0x3bs
        0x2ds
        0x5fs
        0x2cs
    .end array-data

    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x2ds
        0x2as
        0x2bs
        0x23s
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDHWRUserCharSetOnNumber()Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-array v7, v12, [C

    const/16 v9, 0x2d

    aput-char v9, v7, v11

    new-array v3, v12, [C

    const/16 v9, 0x2e

    aput-char v9, v3, v11

    const/4 v9, 0x2

    new-array v8, v9, [C

    fill-array-data v8, :array_0

    const/16 v9, 0xb

    new-array v5, v9, [C

    fill-array-data v5, :array_1

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    iget v9, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v10, 0xfff000

    and-int v2, v9, v10

    iget v9, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v9, 0xf

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iput-boolean v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    :goto_1
    return v9

    :pswitch_0
    move-object v0, v5

    goto :goto_0

    :pswitch_1
    sparse-switch v2, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    move-object v0, v3

    goto :goto_0

    :sswitch_1
    move-object v0, v7

    goto :goto_0

    :sswitch_2
    move-object v0, v8

    goto :goto_0

    :cond_0
    array-length v9, v0

    invoke-static {v0, v9}, Lcom/diotek/dhwr/DHWR;->SetUserCharSet([CI)I

    move-result v6

    if-nez v6, :cond_1

    iput-boolean v12, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    :goto_2
    iget-boolean v9, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_1

    :cond_1
    iput-boolean v11, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mBSetUserChar:Z

    goto :goto_2

    nop

    :array_0
    .array-data 2
        0x2ds
        0x2es
    .end array-data

    :array_1
    .array-data 2
        0x2ds
        0x2as
        0x2bs
        0x23s
        0x28s
        0x29s
        0x2cs
        0x2fs
        0x2es
        0x3bs
        0x4es
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x3000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setEngineArabicLanguageAtrribute(I)V
    .locals 9
    .param p1    # I

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x3

    new-array v1, v7, [I

    aget-object v4, v0, v6

    aput p1, v4, v6

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    aget-object v4, v0, v7

    const/16 v5, 0x77

    aput v5, v4, v6

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v6

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/16 v4, 0xa

    aput v4, v1, v6

    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    return-void
.end method

.method private setEngineAttribute()V
    .locals 1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->releaseDHWRUserCharSet()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isNumRecognitionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeNumberOnly()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeByLanguage()V

    goto :goto_0
.end method

.method private setEngineAttributeByLanguage()V
    .locals 2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineCursiveLanguageAttribute(I)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->isMixRecognition()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeKorEng()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeKor()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineNonCursiveLanguageAtrribute(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineArabicLanguageAtrribute(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineHebrewLanguageAtrribute(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeThai(I)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeChinese()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeHKChinese()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineCursiveLanguageAttribute(I)V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeVietnamese(I)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineAttributeJapanese()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_7
        0x3 -> :sswitch_7
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xb -> :sswitch_1
        0xc -> :sswitch_7
        0xd -> :sswitch_1
        0xe -> :sswitch_7
        0xf -> :sswitch_1
        0x11 -> :sswitch_7
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_7
        0x17 -> :sswitch_7
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1c -> :sswitch_1
        0x1d -> :sswitch_1
        0x1e -> :sswitch_8
        0x22 -> :sswitch_1
        0x23 -> :sswitch_1
        0x24 -> :sswitch_1
        0x25 -> :sswitch_1
        0x27 -> :sswitch_1
        0x29 -> :sswitch_1
        0x65 -> :sswitch_0
        0x67 -> :sswitch_5
        0x6b -> :sswitch_5
        0x6f -> :sswitch_6
        0x70 -> :sswitch_9
        0x71 -> :sswitch_9
        0x74 -> :sswitch_2
        0x75 -> :sswitch_2
        0x76 -> :sswitch_2
        0x7b -> :sswitch_3
        0x7c -> :sswitch_4
    .end sparse-switch
.end method

.method private setEngineAttributeChinese()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x2

    new-array v1, v7, [I

    aget-object v4, v0, v6

    const/16 v5, 0x67

    aput v5, v4, v6

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    aget-object v4, v0, v7

    const/16 v5, 0x6b

    aput v5, v4, v6

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/16 v4, 0xa

    aput v4, v1, v6

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v6

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/4 v2, 0x3

    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    return-void
.end method

.method private setEngineAttributeGesture()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x2

    filled-new-array {v7, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v1, v7, [I

    aget-object v4, v0, v6

    const/16 v5, 0x80

    aput v5, v4, v6

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/16 v4, 0xa

    aput v4, v1, v6

    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    return-void
.end method

.method private setEngineAttributeHKChinese()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x3

    new-array v1, v6, [I

    aget-object v4, v0, v7

    const/16 v5, 0x67

    aput v5, v4, v7

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    aget-object v4, v0, v6

    const/16 v5, 0x6b

    aput v5, v4, v7

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    aget-object v4, v0, v8

    const/16 v5, 0x6f

    aput v5, v4, v7

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    const/16 v4, 0xa

    aput v4, v1, v7

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v6

    const/16 v5, 0x85

    aput v5, v4, v7

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v6

    const/4 v2, 0x4

    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    return-void
.end method

.method private setEngineAttributeJapanese()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    filled-new-array {v4, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x2

    new-array v1, v7, [I

    aget-object v4, v0, v6

    const/16 v5, 0x70

    aput v5, v4, v6

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    aget-object v4, v0, v7

    const/16 v5, 0x71

    aput v5, v4, v6

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/16 v4, 0xa

    aput v4, v1, v6

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v6

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/4 v2, 0x3

    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    return-void
.end method

.method private setEngineAttributeKor()V
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x1

    new-array v1, v8, [I

    aget-object v4, v0, v7

    const/16 v5, 0x65

    aput v5, v4, v7

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_VOWEL:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_CONSONANT:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    const/16 v4, 0xa

    aput v4, v1, v7

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    const/4 v2, 0x2

    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    return-void
.end method

.method private setEngineAttributeKorEng()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x3

    filled-new-array {v3, v8}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v1, v7, [I

    const/4 v2, 0x2

    aget-object v3, v0, v6

    const/16 v4, 0x65

    aput v4, v3, v6

    aget-object v3, v0, v6

    sget v4, Lcom/diotek/dhwr/DHWR;->DTYPE_JOHAP:I

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v4, v5

    aput v4, v3, v7

    aget-object v3, v0, v7

    aput v6, v3, v6

    aget-object v3, v0, v7

    sget v4, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v4, v5

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v4, v5

    aput v4, v3, v7

    aget-object v3, v0, v8

    const/16 v4, 0x85

    aput v4, v3, v6

    aget-object v3, v0, v8

    sget v4, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v4, v3, v7

    const/4 v2, 0x3

    const/16 v3, 0xa

    aput v3, v1, v6

    invoke-static {v7, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    return-void
.end method

.method private setEngineAttributeNumberOnly()V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x1

    new-array v1, v7, [I

    aget-object v4, v0, v6

    const/16 v5, 0x83

    aput v5, v4, v6

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/16 v4, 0xa

    aput v4, v1, v6

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSetOnNumber()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    aget-object v4, v0, v7

    const/16 v5, 0x85

    aput v5, v4, v6

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    return-void
.end method

.method private setEngineAttributeThai(I)V
    .locals 10
    .param p1    # I

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    filled-new-array {v4, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x1

    new-array v1, v8, [I

    aget-object v4, v0, v7

    const/16 v5, 0x7c

    aput v5, v4, v7

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_CONSONANT:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_VOWEL:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_TONE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_CURRENCY:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    aget-object v4, v0, v8

    const/16 v5, 0x7d

    aput v5, v4, v7

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    aget-object v4, v0, v9

    const/16 v5, 0x7e

    aput v5, v4, v7

    aget-object v4, v0, v9

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    const/4 v2, 0x3

    const/16 v4, 0xa

    aput v4, v1, v7

    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    return-void
.end method

.method private setEngineAttributeVietnamese(I)V
    .locals 9
    .param p1    # I

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x1

    new-array v1, v8, [I

    aget-object v4, v0, v7

    aput p1, v4, v7

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_TONE:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    const/4 v2, 0x2

    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    const/16 v4, 0xa

    aput v4, v1, v7

    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    return-void
.end method

.method private setEngineCursiveLanguageAttribute(I)V
    .locals 9
    .param p1    # I

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x1

    new-array v1, v8, [I

    aget-object v4, v0, v7

    aput p1, v4, v7

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_CURSIVE:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    const/16 v4, 0xa

    aput v4, v1, v7

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    const/4 v2, 0x2

    :cond_0
    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    return-void
.end method

.method private setEngineHebrewLanguageAtrribute(I)V
    .locals 8
    .param p1    # I

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x2

    new-array v1, v7, [I

    aget-object v4, v0, v6

    aput p1, v4, v6

    aget-object v4, v0, v6

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_CONSONANT:I

    aput v5, v4, v7

    aget-object v4, v0, v7

    const/16 v5, 0x85

    aput v5, v4, v6

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v7

    const/16 v4, 0xa

    aput v4, v1, v6

    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    return-void
.end method

.method private setEngineLanguage(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v3, 0xff0

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v3, 0xf

    if-ne v0, v5, :cond_0

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setMixRecognition(Z)V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mEngineLang:I

    return-void

    :sswitch_0
    const/16 v3, 0x65

    if-ne p1, v3, :cond_1

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setMixRecognition(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setMixRecognition(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private setEngineNonCursiveLanguageAtrribute(I)V
    .locals 9
    .param p1    # I

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    filled-new-array {v4, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v2, 0x1

    new-array v1, v8, [I

    aget-object v4, v0, v7

    aput p1, v4, v7

    aget-object v4, v0, v7

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_UPPERCASE:I

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v5, v6

    sget v6, Lcom/diotek/dhwr/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v5, v6

    aput v5, v4, v8

    const/4 v2, 0x2

    aget-object v4, v0, v8

    const/16 v5, 0x85

    aput v5, v4, v7

    aget-object v4, v0, v8

    sget v5, Lcom/diotek/dhwr/DHWR;->DTYPE_NONE:I

    aput v5, v4, v8

    const/16 v4, 0xa

    aput v4, v1, v7

    invoke-static {v3, v0, v2, v1}, Lcom/diotek/dhwr/DHWR;->SetAttribute(I[[II[I)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setDHWRUserCharSet()Z

    return-void
.end method

.method private setGestureOnRecognizedStringWrapper(ILandroid/graphics/RectF;)V
    .locals 7
    .param p1    # I
    .param p2    # Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/16 v5, 0x20

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-eq p1, v5, :cond_2

    const/16 v3, 0x1f

    if-ne p1, v3, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleSpaceGesture(Landroid/graphics/RectF;)Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    if-eq p1, v3, :cond_5

    const/16 v3, 0xc

    if-ne p1, v3, :cond_9

    :cond_5
    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleDeleteGesture(Landroid/graphics/RectF;I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, -0x5

    invoke-interface {v3, v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleMergeGesture(Landroid/graphics/RectF;)Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setFont(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->handleAwayGesture(Landroid/graphics/RectF;)Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private setMixRecognition(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsMixRecognition:Z

    return-void
.end method

.method private setNewStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 14
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;-><init>(Ljava/lang/String;IFFIILandroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v12, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    const/4 v13, 0x0

    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_3

    sget-object v1, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v1, v1, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v13, v1

    add-int/lit8 v1, v8, -0x1

    if-ge v10, v1, :cond_0

    add-int/lit8 v13, v13, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_3
    sub-int v12, v9, v13

    :cond_4
    invoke-direct {p0, v12, v9, v11}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    :cond_5
    return-void
.end method

.method private setSettingValues()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->handleHwrSettingValue()V

    return-void
.end method

.method private setStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 34
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/diotek/ime/framework/engine/dhwr/CannotSetStringOnHereException;
        }
    .end annotation

    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v30, :cond_0

    const-string v30, "SamsungIME"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "setStringOnRecognizedStringClass : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " / "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " / "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " isOldRecognizedStringArray : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v32

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->resetChangedTextIndex()V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->getThaiCharType(I)I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v7, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v7, v0, :cond_5

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    move-object/from16 v22, p2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-eqz v30, :cond_15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/high16 v18, -0x4010000000000000L

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isSameArea(Landroid/graphics/RectF;)Z

    move-result v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    move/from16 v30, v0

    if-nez v30, :cond_6

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->setOverlapStartAndEndPoint(Landroid/graphics/RectF;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getCalculatedOverlap()D

    move-result-wide v30

    cmpl-double v30, v30, v18

    if-lez v30, :cond_6

    invoke-virtual/range {v29 .. v29}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getCalculatedOverlap()D

    move-result-wide v18

    move v9, v8

    :cond_6
    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->isSameLine(Landroid/graphics/RectF;)Z

    move-result v30

    if-nez v30, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getEngineLanguage()I

    move-result v30

    const/16 v31, 0x7c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    :cond_7
    const/4 v12, 0x1

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v29}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v31, v0

    cmpl-float v30, v30, v31

    if-gez v30, :cond_8

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v10, v0, :cond_9

    :cond_8
    move v10, v8

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    if-eqz v11, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getStartIndexOfChangeString()I

    move-result v25

    if-eqz v25, :cond_b

    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v0, v5, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getBaseline()F

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    add-int v30, v30, v25

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v30

    invoke-direct {v0, v1, v2, v9}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    :cond_c
    :goto_4
    const-string v30, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_d

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v30

    sub-int v14, v30, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    move/from16 v30, v0

    add-int v30, v30, v14

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextStartIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    move/from16 v30, v0

    add-int v30, v30, v14

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mChangedTextEndIndex:I

    :cond_d
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->modifyRecognizedString(Ljava/lang/String;)V

    :cond_e
    :goto_5
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mThreadWriting:Z

    goto/16 :goto_0

    :cond_f
    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v0, v5, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getBaseline()F

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_4

    :cond_10
    if-eqz v12, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v21

    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    sget-object v30, Lcom/diotek/dhwr/DHWR;->candidatelist_:Ljava/util/ArrayList;

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/diotek/dhwr/DHWR$Candidate;

    iget-object v0, v5, Lcom/diotek/dhwr/DHWR$Candidate;->candlist_:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedStringArea()Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getBaseline()F

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeCorrectStringUpperLowerCaseUsingRect(Ljava/lang/String;Landroid/graphics/RectF;IF)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeSuggestionForChangeLowerUpper(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mStrRect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->addNewString(Ljava/lang/String;Landroid/graphics/RectF;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v24

    const/16 v30, 0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    const/16 v30, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    goto/16 :goto_5

    :cond_12
    const/16 v30, 0x3

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    goto/16 :goto_5

    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v10}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setChangedTextIndex(III)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setNewStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setNewStringOnRecognizedStringWrapper(Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto/16 :goto_5
.end method

.method private showLicenseToast()V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mToastHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-string v3, "Invalid license"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private threadSafeRecog(Z)I
    .locals 3
    .param p1    # Z

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "threadSafeRecog()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsLoadedHDICfile:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not loaded hdic files"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Lcom/diotek/dhwr/DHWR;->Recognize(Z)I

    move-result v0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    :cond_2
    return v0
.end method


# virtual methods
.method public clearContext()I
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    return v1
.end method

.method public clearInkContext()I
    .locals 1

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public freeResources()I
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    if-nez v10, :cond_1

    move-object v8, v9

    :cond_0
    return-object v8

    :cond_1
    invoke-static {}, Lcom/diotek/dhwr/DHWR;->AvailableLanguageList()Ljava/lang/String;

    move-result-object v1

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v10, "_"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_3

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v7, :cond_4

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-static {v6, v7}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "no"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v0, "nb"

    :cond_6
    invoke-static {v0, v9}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v10, "bn"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "hi"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getLanguageIDForEngine(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x74

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x76

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x75

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x7b

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x7c

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x1e

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x1a

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_11
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x1c

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x23

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x22

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x27

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x24

    goto :goto_0

    :sswitch_17
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_18
    const/16 v0, 0x29

    goto :goto_0

    :sswitch_19
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0x65

    goto :goto_0

    :sswitch_1b
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_1d
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_1f
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_20
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_22
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_23
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_24
    const/16 v0, 0x1d

    goto :goto_0

    :sswitch_25
    const/16 v0, 0x67

    goto :goto_0

    :sswitch_26
    const/16 v0, 0x6f

    goto :goto_0

    :sswitch_27
    const/16 v0, 0x67

    goto :goto_0

    :sswitch_28
    const/16 v0, 0x6b

    goto :goto_0

    :sswitch_29
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2a
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2b
    const/16 v0, 0x3a

    goto :goto_0

    :sswitch_2c
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x70

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_0
        0x62670000 -> :sswitch_14
        0x63610000 -> :sswitch_2a
        0x63730000 -> :sswitch_1f
        0x64610000 -> :sswitch_8
        0x64650000 -> :sswitch_1b
        0x656c0000 -> :sswitch_13
        0x656e0000 -> :sswitch_19
        0x656e4742 -> :sswitch_19
        0x656e5553 -> :sswitch_19
        0x65730000 -> :sswitch_20
        0x65734553 -> :sswitch_20
        0x65735553 -> :sswitch_20
        0x65740000 -> :sswitch_4
        0x65750000 -> :sswitch_29
        0x66610000 -> :sswitch_2
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1e
        0x66724341 -> :sswitch_1e
        0x66724652 -> :sswitch_1e
        0x67610000 -> :sswitch_2d
        0x676c0000 -> :sswitch_2b
        0x68720000 -> :sswitch_9
        0x68750000 -> :sswitch_c
        0x69640000 -> :sswitch_19
        0x69730000 -> :sswitch_5
        0x69740000 -> :sswitch_21
        0x69770000 -> :sswitch_3
        0x6a610000 -> :sswitch_2e
        0x6b6b0000 -> :sswitch_16
        0x6b6f0000 -> :sswitch_1a
        0x6c740000 -> :sswitch_b
        0x6c760000 -> :sswitch_a
        0x6d6b0000 -> :sswitch_2c
        0x6d730000 -> :sswitch_19
        0x6e620000 -> :sswitch_d
        0x6e6c0000 -> :sswitch_1c
        0x706c0000 -> :sswitch_1d
        0x70740000 -> :sswitch_22
        0x70744252 -> :sswitch_23
        0x70745054 -> :sswitch_22
        0x726f0000 -> :sswitch_e
        0x72750000 -> :sswitch_15
        0x736b0000 -> :sswitch_f
        0x736c0000 -> :sswitch_10
        0x73720000 -> :sswitch_17
        0x73760000 -> :sswitch_12
        0x74680000 -> :sswitch_6
        0x74720000 -> :sswitch_24
        0x756b0000 -> :sswitch_18
        0x75720000 -> :sswitch_1
        0x76690000 -> :sswitch_7
        0x7a680000 -> :sswitch_25
        0x7a68434e -> :sswitch_27
        0x7a68484b -> :sswitch_26
        0x7a685457 -> :sswitch_28
    .end sparse-switch
.end method

.method public init()I
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "DHWR Wrapper.init()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    new-array v0, v4, [B

    const/4 v2, 0x1

    aput-byte v2, v0, v5

    invoke-static {v4, v0}, Lcom/diotek/dhwr/DHWR;->SetParam(I[B)I

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHWRWrapper SetParam LOG_LEVEL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "/system/hdic/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/diotek/dhwr/DHWR;->SetExternalResourcePath([C)I

    invoke-static {}, Lcom/diotek/dhwr/DHWR;->Create()I

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHWRWrapper create.Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    :cond_3
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mIsValidModel:Z

    :cond_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSuggestions:Ljava/util/List;

    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setSettingValues()V

    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v3, "ROSEMARY"

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    return v5
.end method

.method public inputKey(I)I
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearRecognizedStringReset()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public inputStrokeData(III)Z
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->addPoint(FFI)Z

    int-to-short v0, p1

    int-to-short v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SSZ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->addPoint(FFI)Z

    int-to-short v0, p1

    int-to-short v1, p2

    invoke-direct {p0, v0, v1, v4}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SSZ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->addPoint(FFI)Z

    int-to-short v0, p1

    int-to-short v1, p2

    invoke-direct {p0, v0, v1, v5}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->addPoint(SSZ)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 6
    .param p1    # I

    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "SamsungIME"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTextCharacter() : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p1, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p1, v5, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)I
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iput p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public recognize(IZ)I
    .locals 6
    .param p1    # I
    .param p2    # Z

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeGestureAll()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearHwrPathController()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearHwrPathController()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->clearInk()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeCompleteMode(Z)I

    move-result v2

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->recognizeUnitMode(Z)I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPathController:Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->clear()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mHwrPanelRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v0, 0x28

    invoke-static {p1, p2, p3, p4, v0}, Lcom/diotek/dhwr/DHWR;->SetWritingArea(IIIII)I

    return-void
.end method

.method public setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V
    .locals 0
    .param p1    # Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mAddStrokeCallBack:Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    return-void
.end method

.method public setUsingLanguage(I)I
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->getLanguageIDForEngine(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->setEngineLanguage(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public updateEngine()I
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v1, "ROSEMARY"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mCompleteStringFont:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    return v0
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-nez p2, :cond_0

    :goto_0
    return v4

    :cond_0
    if-nez v0, :cond_2

    iget v1, p0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->mSelectedArrayIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeLastRecognizedStringByForce(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeRecognizedStringBySuggestion(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;->changeLastRecognizedStringByForce(Ljava/lang/String;)V

    goto :goto_0
.end method
