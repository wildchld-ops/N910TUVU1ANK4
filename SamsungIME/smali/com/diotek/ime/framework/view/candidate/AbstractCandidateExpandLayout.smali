.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mIgnorePick:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsBackupPadding:Z

.field private mIsSwiftKeyMode:Z

.field private mOriginLeftPadding:I

.field private mOriginRightPadding:I

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mScrollView:Landroid/widget/ScrollView;

.field protected mScrollViewLayout:Landroid/widget/LinearLayout;

.field protected mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mXt9Version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    return p1
.end method

.method private initialize()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandScrollViewRightPadding()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-void
.end method

.method private isShownExpandView(II)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v7, 0x0

    int-to-float v8, p1

    const/high16 v10, 0x40000000

    div-float v3, v8, v10

    const/4 v1, 0x0

    new-instance v6, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt p2, v8, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    move v0, p2

    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getLeftPaddingSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRightPaddingSize()I

    move-result v5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v8

    invoke-virtual {v6, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v10, v2

    add-float/2addr v8, v10

    int-to-float v10, v5

    add-float v7, v8, v10

    cmpl-float v8, v7, v3

    if-lez v8, :cond_1

    const/4 v1, 0x1

    :cond_3
    move v8, v1

    goto :goto_0
.end method


# virtual methods
.method protected addNewLine()Landroid/widget/LinearLayout;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected addNewLine(Z)Landroid/widget/LinearLayout;
    .locals 8

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLineResourceId()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateListLineResourceId()I

    move-result v3

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v3, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method protected abstract getBackgroundResourceId()I
.end method

.method protected abstract getBottomPaddingSize()I
.end method

.method protected abstract getCandidateLeftRightGapForOneHand()I
.end method

.method protected abstract getCandidateLineResourceId()I
.end method

.method protected abstract getCandidateListLineResourceId()I
.end method

.method protected abstract getExpandScrollViewRightPadding()I
.end method

.method protected abstract getFloatingKeyboardLeftEdge()I
.end method

.method protected abstract getFloatingKeyboardRightEdge()I
.end method

.method protected abstract getHighlightTextColor()I
.end method

.method protected getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    return-object v0
.end method

.method protected abstract getInputedTextColor()I
.end method

.method protected abstract getLeftPaddingSize()I
.end method

.method protected abstract getMaxWidth()I
.end method

.method protected abstract getOneHandKeyboardViewWidth()I
.end method

.method protected abstract getPressedTextColor()I
.end method

.method protected abstract getRightPaddingSize()I
.end method

.method protected getRowCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected abstract getSplitResourceId()I
.end method

.method protected abstract getSuggestionFontSize()F
.end method

.method protected abstract getSuggestionHeight()I
.end method

.method protected abstract getSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getTextColor()I
.end method

.method protected abstract getTopPaddingSize()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    check-cast p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;I)I
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v30, v0

    const-string v31, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v32, -0x1

    invoke-interface/range {v30 .. v32}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v30

    if-eqz v30, :cond_4

    :cond_2
    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v30

    if-eqz v30, :cond_3

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v19

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    move/from16 v31, v0

    add-int v31, v31, v20

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v21

    move/from16 v3, v31

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine(Z)Landroid/widget/LinearLayout;

    move-result-object v8

    const/16 v30, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandScrollViewRightPadding()I

    move-result v31

    mul-int/lit8 v31, v31, 0x2

    sub-int v16, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v30, v30, v20

    sub-int v16, v16, v30

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getLeftPaddingSize()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRightPaddingSize()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v5

    const/16 v27, 0x0

    div-int/lit8 v17, v16, 0x3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v30

    if-nez v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v30

    if-nez v30, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->isShownExpandView(II)Z

    move-result v14

    :goto_2
    move/from16 v11, p2

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v11, v0, :cond_13

    new-instance v25, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-nez v30, :cond_7

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v20

    goto/16 :goto_1

    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    :cond_7
    if-ne v11, v5, :cond_d

    if-lez v11, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-nez v30, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/CharSequence;

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :goto_5
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getInputedTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPressedTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getHighlightTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBackgroundResourceId()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v0, v15, v1, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v30, 0x11

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getHoverListener()Landroid/view/View$OnHoverListener;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_10

    if-eqz v14, :cond_e

    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v30, v30, v31

    add-float v27, v27, v30

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v27, v30

    if-lez v30, :cond_9

    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v30, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v27, v30, v31

    :cond_9
    :goto_6
    new-instance v24, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v30, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    sub-int v30, v10, v26

    sub-int v30, v30, v7

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSplitResourceId()I

    move-result v30

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v30, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v30

    if-nez v30, :cond_11

    move/from16 v0, v29

    if-eq v11, v0, :cond_11

    if-nez v12, :cond_11

    new-instance v30, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v30, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$2;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    move/from16 v30, v0

    if-eqz v30, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v30

    if-nez v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_12

    move/from16 v0, v29

    if-eq v11, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_12

    new-instance v30, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_b
    :goto_8
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-lez v11, :cond_c

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/CharSequence;

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_5

    :cond_e
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v27, v27, v30

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v31

    div-float v23, v30, v31

    const/high16 v30, 0x3f800000

    cmpg-float v30, v23, v30

    if-gez v30, :cond_f

    :goto_9
    const/16 v30, 0x1

    mul-float v31, v9, v23

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v27, v30

    if-lez v30, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    goto/16 :goto_6

    :cond_f
    const/high16 v23, 0x3f800000

    goto :goto_9

    :cond_10
    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v30, v30, v31

    add-float v27, v27, v30

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v27, v30

    if-lez v30, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v27, v30, v31

    goto/16 :goto_6

    :cond_11
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_7

    :cond_12
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_8

    :cond_13
    return p2
.end method
