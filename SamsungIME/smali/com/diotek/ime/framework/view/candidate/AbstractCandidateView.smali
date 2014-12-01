.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateView.java"


# instance fields
.field private final CANDIDATE_VIEW_BASE_INDEX:I

.field private KNOB_SHOW_CANDIDATES_COUNT:I

.field private final UPDATE_PREVIOUS_KEY_STATE:I

.field protected mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

.field private mDisplayedCount:I

.field mDrawHandler:Landroid/os/Handler;

.field private mExpandButton:Landroid/view/View;

.field private mExpandButtonLayout:Landroid/view/View;

.field private mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

.field private mExpandCandidatePopup:Landroid/widget/PopupWindow;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsAlreadyDismissExpandPopup:Z

.field protected mIsPopupCandidateView:Z

.field protected mIsSupportOneHanded:Z

.field protected mIsTabletMode:Z

.field private mLeftArrowKnobButton:Landroid/view/View;

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mRightArrowKnobButton:Landroid/view/View;

.field private mStartKnobIndex:I

.field private mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->CANDIDATE_VIEW_BASE_INDEX:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->UPDATE_PREVIOUS_KEY_STATE:I

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->CANDIDATE_VIEW_BASE_INDEX:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->UPDATE_PREVIOUS_KEY_STATE:I

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$2;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    .locals 1

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateView()Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    return-void
.end method

.method private getFocussedCandidateView()Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    .locals 5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    iget-boolean v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getFocussedCandidateViewIndex()I
    .locals 5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_1
    iget-boolean v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getKnobFocusKeyIndex(I)I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    if-ne v2, p1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, 0x2

    if-ne v2, p1, :cond_3

    const/16 v0, 0xd

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0x3

    if-ne v2, p1, :cond_4

    const/16 v0, 0x13

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v1, 0x4

    if-ne v2, p1, :cond_0

    const/16 v0, 0x18

    goto :goto_0
.end method

.method private getPressedCandidateViewIndex()I
    .locals 5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_1
    iget-boolean v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleKnobCenterKey([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;I)V
    .locals 6

    const/4 v2, -0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v5, :cond_2

    iget v2, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleKnobLeftArrow([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, -0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    if-lez v5, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v7, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->scrollKnobCandidateView(I)V

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateLeftArrowVisibility(I)V

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateRightArrowVisibility(I)V

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewVisibility(I)V

    add-int/lit8 v5, v2, -0x1

    aget-object v4, p1, v5

    iput-boolean v8, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-boolean v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v5, :cond_3

    iget v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    if-eqz v5, :cond_3

    iget v2, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    aget-object v4, p1, v5

    iput-boolean v8, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_2
.end method

.method private handleKnobRightArrow([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v2, -0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    if-eq v2, v7, :cond_4

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    add-int/lit8 v5, v2, 0x1

    array-length v6, p1

    if-ge v5, v6, :cond_4

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    add-int/lit8 v5, v5, 0x4

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v7, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->scrollKnobCandidateView(I)V

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateRightArrowVisibility(I)V

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateLeftArrowVisibility(I)V

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewVisibility(I)V

    add-int/lit8 v5, v2, 0x1

    aget-object v4, p1, v5

    iput-boolean v8, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-boolean v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v5, :cond_3

    iget v2, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v7, :cond_1

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    array-length v6, p1

    if-ge v5, v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    aget-object v4, p1, v5

    iput-boolean v8, v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_2
.end method

.method private updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    const v0, 0x7f02002a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    const v0, 0x7f020027

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateKnobViewFocus(I)V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v0, v1, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    return-void
.end method

.method private updateKnobViewVisibility(I)V
    .locals 6

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    if-lt v4, p1, :cond_2

    iget v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iget v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    add-int/2addr v5, p1

    if-ge v4, v5, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    goto :goto_1
.end method

.method private updateLeftArrowVisibility(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateRightArrowVisibility(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private useExpandingAnimationInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->useAnimationOfExpandCandidate()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public dismissExpandPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setOneHandBgDim(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto :goto_0
.end method

.method protected abstract getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.end method

.method public abstract getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.end method

.method public abstract getCandidateViewHeight()I
.end method

.method public getCandidates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCandidatesDisplayedCount()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    return v0
.end method

.method protected abstract getExpandButton()Landroid/view/View;
.end method

.method protected abstract getExpandButtonClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
.end method

.method protected abstract getExpandButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract getExpandButtonWidth()I
.end method

.method protected abstract getExpandPopupBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getExpandPopupHeight(I)I
.end method

.method protected abstract getExpandPopupWidth()I
.end method

.method protected getExpandPopupYPositon()I
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getService()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v2, v1, v4

    :goto_0
    return v2

    :cond_0
    const/high16 v4, 0x40400000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090148

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method protected abstract getExpandPouupMaxLine()I
.end method

.method public abstract getFloatingKeyboardLeftEdge()I
.end method

.method public abstract getFloatingKeyboardRightEdge()I
.end method

.method protected abstract getLeftArrowKnobButton()Landroid/view/View;
.end method

.method protected abstract getRightArrowKnobButton()Landroid/view/View;
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    return-void
.end method

.method public processSuggestionKnobEvents(Landroid/view/KeyEvent;I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v7, v0, v3

    iget-boolean v9, v7, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    if-eqz v9, :cond_3

    iget v9, v7, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    :cond_0
    if-eq p2, v11, :cond_4

    iget v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    add-int/2addr v9, p2

    add-int/lit8 p2, v9, -0x65

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    add-int/lit8 v10, v10, 0x5

    if-ge v9, v10, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt p2, v9, :cond_1

    const/16 v9, 0x16

    if-eq p2, v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 p2, v9, -0x1

    :cond_1
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewFocus(I)V

    :cond_2
    :goto_1
    :sswitch_0
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_8

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v7, v0, v3

    iget-boolean v9, v7, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v9, :cond_7

    iget v4, v7, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v10, v7, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v7}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    :cond_5
    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getKnobFocusKeyIndex(I)I

    move-result v1

    if-eq v1, v11, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateKnobKeyFocus(I)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->handleKnobLeftArrow([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->handleKnobRightArrow([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateViewIndex()I

    move-result v8

    if-ne v8, v11, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateKnobKeyFocus(I)V

    goto :goto_1

    :sswitch_3
    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->handleKnobLeftArrow([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :sswitch_4
    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v9}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->handleKnobRightArrow([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateViewIndex()I

    move-result v8

    if-ne v8, v11, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateKnobKeyFocus(I)V

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :sswitch_5
    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->handleKnobCenterKey([Lcom/diotek/ime/framework/view/candidate/CandidateTextView;I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-ne v9, v12, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getPressedCandidateViewIndex()I

    move-result v6

    if-eq v6, v11, :cond_a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x42

    if-eq v9, v10, :cond_9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/16 v10, 0x17

    if-ne v9, v10, :cond_a

    :cond_9
    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v7, v9, v6

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget v10, v7, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateViewIndex()I

    move-result v2

    if-eq v2, v11, :cond_2

    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewFocus(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3d -> :sswitch_2
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public setCandidates(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/16 v11, 0x8

    const/4 v7, 0x0

    iput v7, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v3

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getLeftArrowKnobButton()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getRightArrowKnobButton()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02003d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    if-le v8, v9, :cond_d

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020040

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setPopupCandidateLayout()V

    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    if-eqz v8, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_e

    move v4, v6

    :cond_8
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v8

    if-nez v8, :cond_f

    const/4 v8, 0x4

    if-eq v2, v8, :cond_f

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    :goto_3
    if-eqz v3, :cond_12

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v6, p1, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v6

    iput v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_11

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_9
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :cond_a
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {v6, p1, v8}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCandidates(Ljava/util/ArrayList;I)I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_4
    return-void

    :cond_d
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02003f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_e
    move v4, v7

    goto/16 :goto_2

    :cond_f
    if-nez v3, :cond_10

    :goto_5
    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    goto :goto_3

    :cond_10
    move v6, v7

    goto :goto_5

    :cond_11
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_12
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v6, p1, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v6

    iput v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v6, :cond_c

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_14

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_13

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_14
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected abstract setExpandButtonImage(Z)V
.end method

.method public setPopupCandidateView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    return-void
.end method

.method public showExpandPopup()V
    .locals 10

    const/4 v9, 0x4

    const/16 v5, 0x33

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    :cond_1
    iput-boolean v7, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->useExpandingAnimationInternal()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;

    invoke-direct {v3, p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getCurrentLocationX()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY()I

    move-result v5

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationYTopMargin()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-nez v2, :cond_d

    if-eq v0, v9, :cond_d

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_5
    return-void

    :cond_6
    const/4 v0, -0x1

    const-string v2, "SamsungIME"

    const-string v3, "mInputModeManager is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->isRightSide()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightInitX()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v8}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1, v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v4

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-nez v2, :cond_c

    if-ne v0, v9, :cond_a

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    const/16 v3, 0x320

    if-ne v2, v3, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x53

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v7, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupYPositon()I

    move-result v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_c
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public udpateContentDescription()V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e01b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCandidates()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateExpandButtonImage(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    return-void
.end method
