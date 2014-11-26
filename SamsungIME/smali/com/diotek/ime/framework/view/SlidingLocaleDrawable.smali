.class public Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SlidingLocaleDrawable.java"


# instance fields
.field private final mArrowGap:I

.field private final mAscent:I

.field private final mCurrentLangWidth:I

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private final mHeight:I

.field private mHitThreshold:Z

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private final mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsFixedLanguageSwypingOperatingDistance:Z

.field private mIsKorMode:Z

.field private mIsTabletMode:Z

.field private final mLanguageDistance:I

.field private final mLeftArrowPositionX:I

.field private final mLeftLimit:I

.field private mMainSpaceImage:Landroid/graphics/drawable/Drawable;

.field private final mMaxLangWidth:I

.field private final mNextLangWidth:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPadding:I

.field private final mPrevLangWidth:I

.field private mPrevLanguage:Ljava/lang/String;

.field private mPreviewArrowPositionY:I

.field private mPreviewBgImage:Landroid/graphics/drawable/Drawable;

.field private mPreviewLeftArrowX:I

.field private mPreviewRightArrowX:I

.field private mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

.field private mPreviewSpacePositionX:I

.field private mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private final mRightArrowPositionX:I

.field private final mRightLimit:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThreshold:I

.field private mWidth:I


# direct methods
.method public constructor <init>(IILandroid/graphics/Paint;IIILandroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/graphics/Paint;
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    const/high16 v6, 0x3f000000

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHitThreshold:Z

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPadding:I

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsTabletMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsKorMode:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsFixedLanguageSwypingOperatingDistance:Z

    iput-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewBgImage:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpacePositionX:I

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewLeftArrowX:I

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewRightArrowX:I

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewArrowPositionY:I

    const/16 v1, 0x64

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsKorMode:Z

    iput p1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iput p2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mAscent:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mThreshold:I

    iput p4, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsTabletMode:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->setLanguages()V

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLangWidth:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLangWidth:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLangWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLangWidth:I

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftLimit:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SPACE_LANGUAGE_RIGHT_CHANGABLE_CRITICAL_VALUE"

    iget v4, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftLimit:I

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightLimit:I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SPACE_LANGUAGE_LEFT_CHANGABLE_CRITICAL_VALUE"

    iget v4, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightLimit:I

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iput p5, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mArrowGap:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mArrowGap:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftArrowPositionX:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mArrowGap:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightArrowPositionX:I

    iput p6, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPadding:I

    return-void
.end method

.method private setLanguages()V
    .locals 13

    const/16 v12, 0x8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    iget-object v9, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v5

    iget-object v9, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "INPUT_LANGUAGE"

    const/high16 v11, 0x656e0000

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v9, v5

    if-ge v2, v9, :cond_0

    aget-object v9, v5, v2

    invoke-virtual {v9}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v9

    if-ne v9, v0, :cond_5

    move v1, v2

    if-nez v1, :cond_3

    array-length v9, v5

    add-int/lit8 v7, v9, -0x1

    :goto_1
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_4

    const/4 v6, 0x0

    :cond_0
    :goto_2
    array-length v9, v5

    if-lez v9, :cond_1

    if-gez v1, :cond_6

    :cond_1
    const-string v8, ""

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    const-string v8, ""

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    const-string v8, ""

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    :cond_2
    :goto_3
    return-void

    :cond_3
    add-int/lit8 v7, v1, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_7
    move v4, v8

    :goto_4
    if-eqz v3, :cond_8

    const/4 v9, 0x7

    if-eq v3, v9, :cond_8

    if-ne v3, v12, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-nez v9, :cond_a

    :cond_8
    if-eqz v4, :cond_a

    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    aget-object v8, v5, v6

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsKorMode:Z

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsTabletMode:Z

    if-eqz v9, :cond_c

    :cond_b
    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    aget-object v8, v5, v6

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto :goto_3

    :cond_c
    if-eq v3, v8, :cond_d

    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsTabletMode:Z

    if-nez v8, :cond_10

    if-ne v3, v12, :cond_10

    iget-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_d
    aget-object v8, v5, v1

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->getLanguageCodeName(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    :cond_e
    aget-object v8, v5, v7

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->getLanguageCodeName(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    :cond_f
    aget-object v8, v5, v6

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->getLanguageCodeName(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    aget-object v8, v5, v6

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->convertToTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewBgImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewBgImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewBgImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpacePositionX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpacePositionX:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewLeftArrowX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewArrowPositionY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewLeftArrowX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewArrowPositionY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewRightArrowX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewArrowPositionY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewRightArrowX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewArrowPositionY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLangWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLangWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPadding:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getLeftArrowPositionX()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftArrowPositionX:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getRightArrowPositionX()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightArrowPositionX:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDiff(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "FIXED_LANGUAGE_SWYPING_OPERATING_DISTANCE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsFixedLanguageSwypingOperatingDistance:Z

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHitThreshold:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mIsFixedLanguageSwypingOperatingDistance:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLangWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mNextLangWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLangWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMaxLangWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLanguageDistance:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPrevLangWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mThreshold:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHitThreshold:Z

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightLimit:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightLimit:I

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftLimit:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftLimit:I

    neg-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mDiff:I

    goto :goto_1
.end method

.method public setPreviewArrowPositionY(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewArrowPositionY:I

    return-void
.end method

.method public setPreviewBgImage(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewBgImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewBgImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewBgImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setPreviewSpaceImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mMainSpaceImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpacePositionX:I

    :cond_0
    iput-object p2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftArrowPositionX:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mArrowGap:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewLeftArrowX:I

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightArrowPositionX:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mArrowGap:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewRightArrowX:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput v3, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewLeftArrowX:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mLeftArrowPositionX:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewLeftArrowX:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mArrowGap:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewRightArrowX:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mRightArrowPositionX:I

    iput v0, p0, Lcom/diotek/ime/framework/view/SlidingLocaleDrawable;->mPreviewRightArrowX:I

    goto :goto_1
.end method
