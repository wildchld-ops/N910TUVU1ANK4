.class public Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
.super Landroid/widget/TextView;
.source "CandidateTextView.java"


# instance fields
.field private mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mHighlight:Z

.field private mHighlightColor:I

.field private mIndex:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputText:Ljava/lang/CharSequence;

.field private mInputedTextColor:I

.field private mIsExpandView:Z

.field public mIsInFocusState:Z

.field public mIsInPressedState:Z

.field private mIsSwiftKeyMode:Z

.field public mIsVisible:Z

.field private mPressedTextColor:I

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUseSuperOnDraw:Z

.field public mViewIndex:I

.field private mX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlight:Z

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    const/16 v0, -0x100

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mX:F

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlight:Z

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    const/16 v0, -0x100

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mX:F

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlight:Z

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    const/16 v0, -0x100

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mX:F

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v0

    const/16 v1, 0x140

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v1, "SAMSUNGSANS_KEYPAD"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/FontManager;->getSystemFont()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private isNotArabic(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x61720000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x66610000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x75720000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x69770000

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCandidateTextViewWidth()F
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\u0e01"

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    return v2
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    if-nez v0, :cond_1

    iget v4, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mX:F

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v3

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-float v1, v9

    sub-float v5, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlight:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, v2}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_2
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsSwiftKeyMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->isNotArabic(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-static {v7}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float v0, p1

    const/high16 v1, 0x3f000000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mX:F

    return-void
.end method

.method public setAttribute(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsExpandView:Z

    iput-boolean p2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mUseSuperOnDraw:Z

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlightColor:I

    return-void
.end method

.method public setInputedTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputedTextColor:I

    return-void
.end method

.method public setPressedTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mPressedTextColor:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 0

    iput p3, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIndex:I

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mInputText:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mHighlight:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTextColor:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mTypeface:Landroid/graphics/Typeface;

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
