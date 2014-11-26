.class public Lcom/android/keyguard/KeyguardCircleLinearLayout;
.super Landroid/widget/FrameLayout;
.source "KeyguardCircleLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;
    }
.end annotation


# instance fields
.field private animBigCircle:Landroid/view/animation/Animation;

.field private animSideButton:Landroid/view/animation/Animation;

.field private coreView:Landroid/widget/FrameLayout;

.field private enablePosition:[[I

.field private mBigCircle:Landroid/widget/ImageView;

.field private mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

.field private mChildViewNumber:I

.field private mCount:I

.field private mExpandButton:[Landroid/widget/FrameLayout;

.field private mExpandLayout:Landroid/widget/FrameLayout;

.field private mFirstBorder:D

.field private mPosStartX:I

.field private mPosStartY:I

.field private mPositionButton:[[I

.field private mSecondBorder:D

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

.field final scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCircleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->scale:F

    new-array v0, v1, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->enablePosition:[[I

    return-void
.end method

.method private PressButton(I)V
    .locals 2
    .param p1    # I

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mChildViewNumber:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;->Unlock(Landroid/widget/FrameLayout;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;->Unlock(Landroid/widget/FrameLayout;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;->Unlock(Landroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method private SetCoreView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCircleLinearLayout$2;-><init>(Lcom/android/keyguard/KeyguardCircleLinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private SetSideView(Landroid/view/View;III)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    aget-object v0, v2, p4

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, p2, v4, v4, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardCircleLinearLayout;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartX:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartX:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardCircleLinearLayout;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iget v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartY:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPosStartY:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardCircleLinearLayout;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->PressButton(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardCircleLinearLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D
    .locals 2
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mSecondBorder:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardCircleLinearLayout;)D
    .locals 2
    .param p0    # Lcom/android/keyguard/KeyguardCircleLinearLayout;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mFirstBorder:D

    return-wide v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v3, 0x0

    const v1, 0x7f0b00ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mChildViewNumber:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->SetCoreView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    iget v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/keyguard/KeyguardCircleLinearLayout;->SetSideView(Landroid/view/View;III)V

    iget v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCount:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->coreView:Landroid/widget/FrameLayout;

    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->animBigCircle:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f040003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->animSideButton:Landroid/view/animation/Animation;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mFirstBorder:D

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mSecondBorder:D

    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mBigCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mExpandButton:[Landroid/widget/FrameLayout;

    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v3

    const/4 v0, 0x3

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public setButtonPosition(III)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mPositionButton:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-void
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCircleLinearLayout;->mCallback:Lcom/android/keyguard/KeyguardCircleLinearLayout$CircleLinearLayoutCallback;

    return-void
.end method
