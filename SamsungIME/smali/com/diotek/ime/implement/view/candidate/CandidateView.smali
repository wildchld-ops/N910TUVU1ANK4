.class public Lcom/diotek/ime/implement/view/candidate/CandidateView;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.source "CandidateView.java"


# instance fields
.field private mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

.field private mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

.field private mDownPoint:Landroid/graphics/Point;

.field private mExpandButton:Landroid/view/View;

.field private mExpandButtonClickListener:Landroid/view/View$OnClickListener;

.field private mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mExpandButtonWidth:I

.field private mLeftArrowKnobButton:Landroid/view/View;

.field private mRightArrowKnobButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    return v0
.end method

.method static synthetic access$702(Lcom/diotek/ime/implement/view/candidate/CandidateView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    return p1
.end method

.method static synthetic access$800(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/diotek/ime/implement/view/candidate/CandidateView;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-super {p0, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    move v0, v9

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;
    .locals 15

    const/16 v14, 0x8

    const/4 v13, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v10

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonOnEmailUrlMode()Z

    move-result v9

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v8

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v11, :cond_0

    const v11, 0x7f080013

    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    if-eqz v0, :cond_4

    if-eqz v9, :cond_2

    if-nez v8, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v8, :cond_7

    if-ne v2, v14, :cond_6

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000d

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    :goto_0
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonEnableOnEmailUrlMode(Z)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v11

    if-eqz v11, :cond_4

    if-ne v2, v14, :cond_9

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000b

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setPrevNextButtonEnable(I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_b

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000e

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    goto :goto_0

    :cond_7
    if-ne v2, v14, :cond_8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030006

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    goto :goto_0

    :cond_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030007

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    goto :goto_0

    :cond_9
    iget-object v11, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f03000c

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    if-eq v2, v14, :cond_a

    const/4 v11, 0x7

    if-ne v2, v11, :cond_3

    :cond_a
    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    :try_start_0
    const-string v11, "popup_candidate_button_top_padding_size"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v7

    const-string v11, "popup_candidate_button_bottom_padding_size"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    goto :goto_1

    :cond_b
    if-eqz v0, :cond_5

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object v0
.end method

.method public getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    const-string v1, "candidate_bg_expand_non_shadow"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .locals 4

    const v2, 0x7f080014

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f0a0005

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09073c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public getCandidateViewHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getExpandButton()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getExpandButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getExpandButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateView$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView$3;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView$1;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    return-object v0
.end method

.method protected getExpandButtonLayout()Landroid/widget/LinearLayout;
    .locals 9

    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090747

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09058a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090746

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090743

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090745

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090744

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_2
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090166

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090589

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090168

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090152

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090167

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090153

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090169

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method protected getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView$2;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getExpandButtonWidth()I
    .locals 4

    const v3, 0x7f090167

    const v2, 0x7f090166

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090747

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090745

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090746

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method protected getExpandPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getExpandPopupHeight(I)I
    .locals 5

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09073c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090149

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getExpandPouupMaxLine()I

    move-result v2

    if-le p1, v2, :cond_1

    add-int v3, v1, v0

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    :goto_1
    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090148

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_0

    :cond_1
    add-int v3, v1, v0

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    goto :goto_1
.end method

.method protected getExpandPopupWidth()I
    .locals 7

    const v6, 0x7f09014b

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    :try_start_0
    const-string v5, "split_candidate_view_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getFloatingKeyboardRightEdge()I

    move-result v3

    :try_start_1
    const-string v5, "floating_keyboard_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_1
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    iget v5, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    goto :goto_0
.end method

.method protected getExpandPouupMaxLine()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-nez v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getFloatingKeyboardLeftEdge()I
    .locals 2

    :try_start_0
    const-string v1, "floating_keyboard_left_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatingKeyboardRightEdge()I
    .locals 2

    :try_start_0
    const-string v1, "floating_keyboard_right_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getLeftArrowKnobButton()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getLeftArrowKnobButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftArrowKnobButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected bridge synthetic getRightArrowKnobButton()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getRightArrowKnobButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getRightArrowKnobButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateView;->getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_0

    const/4 v2, 0x0

    int-to-float v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_1
    return v3

    :pswitch_1
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setExpandButtonImage(Z)V
    .locals 7

    const v6, 0x7f02003b

    const v5, 0x7f020035

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v4, "floating_candidate_button_bg_close_xml_amoled"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v4, "floating_candidate_button_bg_close_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v4, "floating_candidate_button_bg_expand_xml_amoled"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v4, "floating_candidate_button_bg_expand_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    :try_start_4
    const-string v3, "candidate_button_bg_close_xml_amoled"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_4
    move-exception v0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    :try_start_5
    const-string v3, "candidate_button_bg_expand_xml_amoled"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v4, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catch_5
    move-exception v0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method
