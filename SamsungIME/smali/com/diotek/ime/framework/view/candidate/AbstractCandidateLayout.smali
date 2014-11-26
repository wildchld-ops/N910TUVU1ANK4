.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.super Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HANJA_MAX_DISPLAY_CANDIDATE:I = 0x64

.field private static final MAX_DISPLAY_CANDIDATE:I = 0x14


# instance fields
.field private KNOB_SHOW_CANDIDATES_COUNT:I

.field private mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

.field private mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnorePick:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsBackupPadding:Z

.field protected mIsKorMode:Z

.field protected mIsPopupCandidateLayout:Z

.field private mIsSwiftKeyMode:Z

.field private mOriginLeftPadding:I

.field private mOriginRightPadding:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mSplitView:[Landroid/widget/TextView;

.field protected mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

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

.field private mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

.field protected mXt9Version:I

.field private misLeftScrolled:Z

.field private misRightScrolled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Landroid/view/GestureDetector;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return p1
.end method

.method private initGestureDetector()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initialize()V
    .locals 11

    const/16 v10, 0x14

    const/16 v9, 0x13

    const/16 v8, 0xb2

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    :cond_0
    new-array v4, v10, [Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    new-array v4, v9, [Landroid/widget/TextView;

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    new-instance v5, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v4, v4, v1

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    if-ge v1, v9, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    const-string v5, " "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v5, 0x7f0a0008

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7, v2, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    const/16 v5, 0x4c

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f0a0006

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v6, 0x7f0a0007

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHeight(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7, v3, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initGestureDetector()V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    :cond_4
    return-void
.end method

.method private isShownExpandView(I)Z
    .locals 11
    .param p1    # I

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v9, :cond_1

    move v1, v9

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v7, 0x0

    int-to-float v8, p1

    const/high16 v10, 0x40000000

    div-float v4, v8, v10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v6

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v8, v8, v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v10, v2

    add-float/2addr v8, v10

    int-to-float v10, v6

    add-float v7, v8, v10

    cmpl-float v8, v7, v4

    if-lez v8, :cond_2

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getBackgroundResourceId()I
.end method

.method protected abstract getBottomPaddingSize()I
.end method

.method protected abstract getCandidateLeftRightGapForOneHand()I
.end method

.method protected abstract getHighlightTextColor()I
.end method

.method protected getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method protected abstract getInputedTextColor()I
.end method

.method protected abstract getLeftPaddingSize()I
.end method

.method protected abstract getMaxWidth(Z)I
.end method

.method protected abstract getOneHandKeyboardViewWidth()I
.end method

.method protected abstract getPressedTextColor()I
.end method

.method protected abstract getPreviewSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getRightPaddingSize()I
.end method

.method protected abstract getSelecedBackgroundResourceId()I
.end method

.method protected abstract getSplitResourceId()I
.end method

.method protected abstract getSuggestionFontSize()F
.end method

.method protected abstract getSuggestionHeight()I
.end method

.method protected abstract getSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method public getSuggestionViews()[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    return-object v0
.end method

.method protected abstract getTextColor()I
.end method

.method protected abstract getTopPaddingSize()I
.end method

.method protected getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    move v2, v5

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    move-object v4, p1

    check-cast v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    if-eqz v4, :cond_3

    iput-boolean v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move-object v4, p1

    check-cast v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "first_auto_replacement_tap_execution"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-ne v1, v5, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, p1, v5}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;Z)I
    .locals 55
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v50, "SamsungIME"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "AbstractCandidateLayout-setCandidates suggestions count : "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    if-eqz v50, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    const/16 v51, 0x10

    invoke-virtual/range {v50 .. v51}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    move/from16 v50, v0

    if-eqz v50, :cond_1

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v50, v0

    const-string v51, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v52, -0x1

    invoke-interface/range {v50 .. v52}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v50

    if-eqz v50, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v50

    if-nez v50, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_a

    const/16 v50, 0x4

    move/from16 v0, v50

    if-eq v8, v0, :cond_a

    const/16 v19, 0x1

    :goto_0
    if-eqz v19, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v50

    if-eqz v50, :cond_b

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v50

    if-eqz v50, :cond_c

    :cond_2
    const/16 v22, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v30

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    move/from16 v50, v0

    if-nez v50, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v50

    if-eqz v50, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v32

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v18

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    if-eqz v50, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_10

    const/16 v50, 0x8

    move/from16 v0, v18

    move/from16 v1, v50

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f09014d

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v50

    move/from16 v0, v50

    float-to-int v10, v0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v50, v0

    add-int v50, v50, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v34

    move/from16 v3, v51

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    if-eqz v50, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v45

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v43

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionHeight()I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getMaxWidth(Z)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    if-eqz v50, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_11

    add-int v50, v32, v33

    add-int v50, v50, v10

    sub-int v28, v28, v50

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_5

    if-gez v5, :cond_5

    const/16 v50, 0x2

    move/from16 v0, v50

    if-eq v8, v0, :cond_5

    const/4 v5, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v50, v0

    if-nez v50, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v50, v0

    if-nez v50, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v50

    if-eqz v50, :cond_7

    :cond_6
    const/16 v50, 0x2

    move/from16 v0, v50

    if-ne v8, v0, :cond_7

    const/4 v5, -0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v46

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v9

    const/4 v13, 0x0

    if-eqz v9, :cond_8

    instance-of v0, v9, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move/from16 v50, v0

    if-eqz v50, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_8

    check-cast v9, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonWidth()I

    move-result v13

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v50

    if-nez v50, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-gt v0, v1, :cond_12

    div-int/lit8 v29, v28, 0x3

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->isShownExpandView(I)Z

    move-result v50

    if-eqz v50, :cond_13

    const/16 v25, 0x1

    :goto_8
    const/16 v50, 0x2

    move/from16 v0, v50

    if-ne v8, v0, :cond_14

    const/16 v23, 0x1

    :goto_9
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-eqz v50, :cond_15

    sub-int v50, v28, v13

    div-int/lit8 v29, v50, 0x5

    add-int/lit8 v50, v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->setCandidateWidthAndCount(II)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v50

    if-eqz v50, :cond_18

    const/16 v16, 0x14

    :goto_b
    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v16

    move/from16 v1, v50

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    if-nez v50, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    new-instance v51, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v51, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x11

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, -0x1

    new-instance v52, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v52, v50, v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, -0x1

    aget-object v50, v50, v51

    const-string v51, " "

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-eqz v50, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    const v51, 0x7f0a0008

    invoke-interface/range {v50 .. v51}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v26

    move/from16 v3, v52

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x4c

    const/16 v52, 0xb2

    const/16 v53, 0xb2

    const/16 v54, 0xb2

    invoke-static/range {v51 .. v54}, Landroid/graphics/Color;->argb(IIII)I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v51, v0

    const v52, 0x7f0a0006

    invoke-interface/range {v51 .. v52}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v51, v0

    const v52, 0x7f0a0007

    invoke-interface/range {v51 .. v52}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setHeight(I)V

    :cond_9
    :goto_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v33

    goto/16 :goto_3

    :cond_e
    const/16 v50, 0x7

    move/from16 v0, v18

    move/from16 v1, v50

    if-ne v0, v1, :cond_f

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f09014c

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v50

    move/from16 v0, v50

    float-to-int v10, v0

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v50, v0

    add-int v50, v50, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v34

    move/from16 v3, v51

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    :cond_11
    add-int v50, v32, v33

    add-int v50, v50, v10

    add-int v50, v50, v10

    sub-int v28, v28, v50

    goto/16 :goto_6

    :cond_12
    sub-int v50, v28, v13

    div-int/lit8 v29, v50, 0x3

    goto/16 :goto_7

    :cond_13
    const/16 v25, 0x0

    goto/16 :goto_8

    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v50

    if-eqz v50, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v50

    if-nez v50, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aget-object v50, v50, v51

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v50

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v29, v0

    add-int/lit8 v50, v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->setCandidateWidthAndCount(II)V

    goto/16 :goto_a

    :cond_16
    add-int/lit8 v50, v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->setCandidateWidthAndCount(II)V

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, -0x1

    aget-object v50, v50, v51

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, -0x1

    aget-object v50, v50, v51

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v43

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, -0x1

    aget-object v50, v50, v51

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_c

    :cond_18
    if-eqz v23, :cond_19

    const/16 v49, 0x0

    const/16 v16, 0x0

    :goto_d
    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v16

    move/from16 v1, v50

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    if-nez v50, :cond_1d

    const-string v50, "SamsungIME"

    const-string v51, "mSuggestionViews[idx] is null"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_1a

    if-lez v40, :cond_1a

    const-string v50, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-virtual/range {v51 .. v52}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1a

    const/4 v5, -0x1

    :cond_1a
    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v16

    move/from16 v1, v50

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    if-nez v50, :cond_1f

    const-string v50, "SamsungIME"

    const-string v51, "mSuggestionViews[idx] is null"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_1c

    const/16 v50, 0x3

    move/from16 v0, v50

    if-le v12, v0, :cond_1c

    const/4 v12, 0x3

    :cond_1c
    return v12

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v50

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v49

    move/from16 v1, v38

    if-ge v0, v1, :cond_1e

    move/from16 v49, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_1e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_d

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_24

    if-eqz v18, :cond_20

    const/16 v50, 0x8

    move/from16 v0, v18

    move/from16 v1, v50

    if-ne v0, v1, :cond_24

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v16

    if-gt v0, v1, :cond_22

    :cond_21
    :goto_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_23

    const-string v50, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_25

    :cond_23
    if-nez v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_10

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_21

    :cond_25
    move/from16 v0, v16

    if-ne v0, v5, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v52, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/CharSequence;

    const/16 v53, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    move/from16 v3, v16

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTextColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getPressedTextColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getInputedTextColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move/from16 v0, v16

    move-object/from16 v1, v50

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I

    move/from16 v50, v0

    move/from16 v0, v16

    move/from16 v1, v50

    if-ge v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v50

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    :cond_26
    if-nez v5, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_3a

    const/16 v50, 0x4

    move/from16 v0, v50

    if-ne v8, v0, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v50

    if-eqz v50, :cond_3d

    move/from16 v0, v16

    if-ne v0, v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSelecedBackgroundResourceId()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-virtual/range {v50 .. v52}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x11

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v23, :cond_3e

    if-eqz v11, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    aget-object v51, v51, v16

    invoke-virtual/range {v51 .. v51}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v52, v0

    aget-object v52, v52, v16

    invoke-virtual/range {v52 .. v52}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v51

    sub-float v50, v50, v51

    const/high16 v51, 0x40000000

    div-float v50, v50, v51

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    add-int v51, v27, v31

    const/16 v52, 0x0

    add-int v53, v36, v31

    const/16 v54, 0x0

    invoke-virtual/range {v50 .. v54}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_14
    const/16 v50, 0x3

    move/from16 v0, v50

    if-eq v8, v0, :cond_4a

    if-nez v22, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v50

    if-eqz v50, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v50

    if-nez v50, :cond_41

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    sub-int v51, v28, v13

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    const/16 v52, 0x1

    invoke-virtual/range {v50 .. v52}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    sget-object v51, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v35, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v50, -0x2

    const/16 v51, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v50, 0xd

    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x13

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setGravity(I)V

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v50

    const/high16 v51, 0x3f800000

    add-float v50, v50, v51

    add-float v44, v44, v50

    sub-int v50, v28, v13

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    cmpl-float v50, v44, v50

    if-lez v50, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v50

    if-nez v50, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-nez v50, :cond_28

    if-nez v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    const/16 v52, 0x1

    invoke-virtual/range {v50 .. v52}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    sget-object v51, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v35, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v50, -0x2

    const/16 v51, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v50, 0xd

    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    :goto_16
    if-lez v16, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    if-eqz v50, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-nez v50, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, -0x1

    aget-object v50, v50, v51

    sub-int v51, v15, v43

    sub-int v51, v51, v7

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setHeight(I)V

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_4b

    const/16 v50, 0x1

    move/from16 v0, v16

    move/from16 v1, v50

    if-ne v0, v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v50

    if-eqz v50, :cond_2a

    if-eqz v25, :cond_4b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v50

    if-nez v50, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-nez v50, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v51, v0

    add-int/lit8 v52, v16, -0x1

    aget-object v51, v51, v52

    const/16 v52, 0x0

    invoke-virtual/range {v50 .. v52}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2b
    :goto_17
    if-eqz v46, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v50

    if-eqz v50, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_4c

    const/16 v21, 0x1

    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v50

    if-nez v50, :cond_4f

    move/from16 v0, v16

    move/from16 v1, v47

    if-eq v0, v1, :cond_4f

    if-nez v21, :cond_4f

    if-eqz v39, :cond_2d

    const-string v50, " "

    move-object/from16 v0, v39

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-nez v50, :cond_4f

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2e

    if-eqz v39, :cond_2e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2e

    const/16 v50, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v50

    if-nez v50, :cond_2e

    const-string v50, ".,;!?\u061b\u060c\u061f"

    const/16 v51, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_4f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v50

    if-nez v50, :cond_4f

    if-nez v22, :cond_4f

    const/16 v24, 0x1

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2f

    const-string v50, ".,;!?\u061b\u060c\u061f"

    const/16 v51, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v50

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_4d

    const/16 v24, 0x1

    :cond_2f
    :goto_19
    if-eqz v24, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    new-instance v51, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_30
    :goto_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v50, v0

    if-eqz v50, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v50, v0

    if-eqz v50, :cond_31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v50, v0

    if-nez v50, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v50

    if-nez v50, :cond_50

    move/from16 v0, v16

    move/from16 v1, v47

    if-eq v0, v1, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_50

    if-nez v23, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    new-instance v51, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_31
    :goto_1b
    if-eqz v20, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_51

    const/16 v50, 0x1

    move/from16 v0, v50

    if-ne v5, v0, :cond_32

    if-nez v16, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const v51, 0x7f020005

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const-string v51, " "

    const-string v52, " "

    const/16 v53, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v16

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_32
    const/16 v50, 0x1

    move/from16 v0, v50

    if-ne v5, v0, :cond_33

    const/16 v50, 0x1

    move/from16 v0, v16

    move/from16 v1, v50

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    :cond_33
    :goto_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_53

    const/16 v50, 0x1

    move/from16 v0, v16

    move/from16 v1, v50

    if-ne v0, v1, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v50

    if-nez v50, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v50

    if-eqz v50, :cond_34

    if-eqz v25, :cond_53

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v50

    if-nez v50, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-nez v50, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    if-eqz v50, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    aget-object v51, v51, v16

    const/16 v52, 0x0

    invoke-virtual/range {v50 .. v52}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_35
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-eqz v50, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    add-int/lit8 v50, v50, -0x1

    move/from16 v0, v16

    move/from16 v1, v50

    if-ne v0, v1, :cond_37

    add-int/lit8 v50, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I

    move/from16 v51, v0

    rem-int v48, v50, v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, 0x1

    aget-object v50, v50, v51

    if-nez v50, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, 0x1

    new-instance v52, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v52, v50, v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, 0x1

    aget-object v50, v50, v51

    const/16 v51, 0x11

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setGravity(I)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, 0x1

    aget-object v50, v50, v51

    mul-int v51, v29, v48

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    add-int/lit8 v51, v16, 0x1

    aget-object v50, v50, v51

    const-string v51, ""

    const-string v52, ""

    add-int/lit8 v53, v16, 0x1

    const/16 v54, 0x0

    invoke-virtual/range {v50 .. v54}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    if-eqz v50, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    add-int/lit8 v52, v16, 0x1

    aget-object v51, v51, v52

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_54

    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_10

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v52, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    const/16 v53, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/lang/CharSequence;

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    move/from16 v3, v16

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_11

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, -0x1

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_12

    :cond_3a
    if-eqz v19, :cond_3c

    if-nez v16, :cond_3b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v50

    if-eqz v50, :cond_3b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-virtual/range {v51 .. v52}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_3b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v50

    if-nez v50, :cond_3b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v50

    if-nez v50, :cond_3b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v50

    if-nez v50, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_12

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, -0x1

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_12

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_12

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_13

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v27

    move/from16 v2, v51

    move/from16 v3, v36

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_14

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v50, v0

    invoke-interface/range {v50 .. v50}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v50

    if-eqz v50, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_15

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    aget-object v51, v51, v16

    invoke-virtual/range {v51 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v51

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_15

    :cond_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v50, v0

    if-eqz v50, :cond_45

    if-eqz v25, :cond_43

    const/16 v50, 0x4

    move/from16 v0, v50

    if-eq v8, v0, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    const/16 v52, 0x1

    invoke-virtual/range {v50 .. v52}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    sget-object v51, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v35, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v50, -0x2

    const/16 v51, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v50, 0xd

    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x13

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setGravity(I)V

    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    sub-int v51, v28, v13

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    sub-int v50, v28, v13

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    add-float v44, v44, v50

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v50, v0

    cmpl-float v50, v44, v50

    if-gtz v50, :cond_1b

    const/16 v50, 0x0

    cmpg-float v50, v44, v50

    if-gez v50, :cond_28

    goto/16 :goto_f

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getPreviewSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1e

    :cond_43
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v50, v0

    add-float v44, v44, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, v50

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    aget-object v51, v51, v16

    invoke-virtual/range {v51 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v51

    div-float v37, v50, v51

    const/high16 v50, 0x3f800000

    cmpg-float v50, v37, v50

    if-gez v50, :cond_44

    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x1

    mul-float v52, v14, v37

    invoke-virtual/range {v50 .. v52}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_16

    :cond_44
    const/high16 v37, 0x3f800000

    goto :goto_1f

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v50

    const/high16 v51, 0x3f800000

    add-float v50, v50, v51

    add-float v44, v44, v50

    sub-int v50, v28, v13

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    cmpl-float v50, v44, v50

    if-lez v50, :cond_46

    if-nez v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v39

    new-instance v41, Ljava/lang/StringBuilder;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v42, 0x0

    const/16 v17, 0x0

    :goto_20
    invoke-interface/range {v39 .. v39}, Ljava/lang/CharSequence;->length()I

    move-result v50

    move/from16 v0, v17

    move/from16 v1, v50

    if-gt v0, v1, :cond_46

    const/16 v50, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v50, "..."

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v39 .. v39}, Ljava/lang/CharSequence;->length()I

    move-result v50

    move-object/from16 v0, v39

    move/from16 v1, v17

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v50

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v51, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    const/16 v52, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/CharSequence;

    const/16 v52, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, v41

    move-object/from16 v2, v50

    move/from16 v3, v16

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v50

    const/high16 v51, 0x3f800000

    add-float v42, v50, v51

    sub-int v50, v28, v13

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    cmpg-float v50, v42, v50

    if-gtz v50, :cond_47

    :cond_46
    const/16 v50, 0x4

    move/from16 v0, v50

    if-ne v8, v0, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getPreviewSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    sub-int v51, v28, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v52, v0

    mul-int/lit8 v52, v52, 0x2

    sub-int v51, v51, v52

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_16

    :cond_47
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_20

    :cond_48
    const/16 v50, 0x1

    move/from16 v0, v50

    if-ne v5, v0, :cond_49

    if-nez v16, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    div-int/lit8 v51, v28, 0x7

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_16

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    aget-object v51, v51, v16

    invoke-virtual/range {v51 .. v51}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v51

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_16

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    invoke-virtual/range {v50 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v50

    const/high16 v51, 0x3f800000

    add-float v50, v50, v51

    add-float v44, v44, v50

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v50, v0

    cmpg-float v50, v44, v50

    if-gez v50, :cond_28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v50, v0

    sub-float v50, v50, v44

    const/high16 v51, 0x40000000

    div-float v50, v50, v51

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v27

    move/from16 v2, v51

    move/from16 v3, v36

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_16

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v51, v0

    add-int/lit8 v52, v16, -0x1

    aget-object v51, v51, v52

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_17

    :cond_4c
    const/16 v21, 0x0

    goto/16 :goto_18

    :cond_4d
    const/16 v24, 0x0

    goto/16 :goto_19

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1a

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1a

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1b

    :cond_51
    const/16 v50, 0x1

    move/from16 v0, v16

    move/from16 v1, v50

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_52

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    invoke-virtual/range {v51 .. v52}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_33

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const v51, 0x7f020005

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v16

    const-string v51, " "

    const-string v52, " "

    const/16 v53, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v16

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1c

    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    if-eqz v50, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v51, v0

    aget-object v51, v51, v16

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1d

    :cond_54
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_10
.end method

.method public setPopupCandidateLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    return-void
.end method

.method public abstract setSuggestionSelectionBg(IZ)V
.end method
