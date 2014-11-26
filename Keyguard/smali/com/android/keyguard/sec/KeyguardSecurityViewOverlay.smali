.class public Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityViewOverlay.java"


# static fields
.field private static mBootOnCameraShortCut:Z


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field private mCameraCircle:Landroid/view/View;

.field private mCarrierText:Landroid/view/View;

.field private mCarrierTextMinWidth:I

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mEmergencyButtonArea:Landroid/widget/LinearLayout;

.field private mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

.field private mGuestCicle:Landroid/view/View;

.field private mGusetUnlockHelpText:Landroid/widget/TextView;

.field private mHandledCameraShortCut:Z

.field private mHandledEmergencyCircle:Z

.field private mHandledGuestIcon:Z

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIconContaniner:Landroid/view/View;

.field private mIsCircleEffect:Z

.field private mIsEmergencyCircleView:Z

.field private mIsEmergencyMode:Z

.field private mIsKidsMode:Z

.field private mIsLiveWallPaper:Z

.field private mIsSecure:Z

.field private mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMSimCarrierText:Landroid/view/View;

.field private mPrevCarrierTextVisibility:I

.field private mPrevHelpTextVisibility:I

.field private mSecCameraArrow:Landroid/widget/ImageView;

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecEmergencyArrow:Landroid/widget/ImageView;

.field private mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewECA:Landroid/widget/LinearLayout;

.field private mShortcutSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mBootOnCameraShortCut:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevCarrierTextVisibility:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevHelpTextVisibility:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsEmergencyCircleView:Z

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevCarrierTextVisibility:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevHelpTextVisibility:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsEmergencyCircleView:Z

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevCarrierTextVisibility:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevHelpTextVisibility:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsEmergencyCircleView:Z

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method private alignECA(IZ)V
    .locals 5
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private handleVisibility(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-ne p2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEmergencyCircle:Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEmergencyCircle:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledEmergencyCircle:Z

    goto :goto_0

    :sswitch_1
    if-ne p2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledGuestIcon:Z

    goto :goto_0

    :sswitch_2
    if-ne p2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    goto :goto_0

    :cond_4
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHandledCameraShortCut:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b001e -> :sswitch_0
        0x7f0b0045 -> :sswitch_2
        0x7f0b0079 -> :sswitch_1
    .end sparse-switch
.end method

.method private isHitView(Landroid/view/View;FF)Z
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    goto :goto_0
.end method

.method private isShowEmergencyArrow()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    move v2, v4

    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    move v3, v4

    :goto_3
    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsSecure:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    :goto_4
    return v4

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    :cond_4
    move v4, v5

    goto :goto_4
.end method

.method private setEmergencyArrowPosition()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 11

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40400000

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    const/high16 v10, 0x40400000

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAusFeature()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    const/high16 v10, 0x40400000

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v2, :cond_c

    if-nez v3, :cond_c

    if-nez v1, :cond_c

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_9

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    const/high16 v10, 0x40400000

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    const/16 v6, 0x11

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v6

    if-eqz v6, :cond_8

    const/high16 v6, 0x40400000

    cmpg-float v6, v0, v6

    if-gez v6, :cond_8

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v7, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_8

    :cond_7
    const/high16 v6, 0x41500000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v8, 0x43200000

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isFonblet()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    const/high16 v10, 0x40400000

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_a
    const/16 v6, 0x11

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    goto :goto_2

    :cond_b
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    goto/16 :goto_1

    :cond_c
    if-nez v2, :cond_d

    if-eqz v3, :cond_f

    :cond_d
    if-nez v1, :cond_f

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_e
    const/16 v6, 0x11

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    goto/16 :goto_1

    :cond_f
    if-nez v2, :cond_12

    if-nez v3, :cond_12

    if-eqz v1, :cond_12

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_11

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_10
    const/16 v6, 0x11

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    goto/16 :goto_1

    :cond_11
    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_12
    if-nez v2, :cond_13

    if-eqz v3, :cond_5

    :cond_13
    if-eqz v1, :cond_5

    const/16 v6, 0x11

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->alignECA(IZ)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v7, -0x2

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00bf

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierTextMinWidth:I

    const v2, 0x7f0b00ca

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecurityViewECA:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0066

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    const v2, 0x7f0b0067

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButtonArea:Landroid/widget/LinearLayout;

    const v5, 0x7f0b0061

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/EmergencyButton;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    :cond_0
    const v2, 0x7f0b001e

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecEmergencyCircleView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v2, :cond_1

    const v2, 0x7f0b00cd

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->setEmergencyTextView(Landroid/widget/TextView;)V

    :cond_1
    const v2, 0x7f0b0079

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardGuestSelectorView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    const v2, 0x7f0b0045

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    const v2, 0x7f0b00c8

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const v2, 0x7f0b00cb

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const v2, 0x7f0b00cc

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    const v2, 0x7f0b00c7

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIconContaniner:Landroid/view/View;

    const v2, 0x7f0b0060

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierText:Landroid/view/View;

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0b0102

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mMSimCarrierText:Landroid/view/View;

    :cond_2
    const v2, 0x7f0b0064

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    const v2, 0x7f0b00c9

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const v2, 0x7f0b0020

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mBlockRequestFocusForHealthView:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    sget-boolean v2, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_c

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsSecure:Z

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "set_shortcuts_mode"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    :cond_5
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "kids_home_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_e

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "emergency_mode"

    invoke-static {v2, v5, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_f

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsEmergencyMode:Z

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->isShowEmergencyArrow()Z

    move-result v2

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_4
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsSecure:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v2, v6}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsEmergencyMode:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsSecure:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void

    :cond_c
    move v2, v4

    goto/16 :goto_0

    :cond_d
    move v2, v4

    goto/16 :goto_1

    :cond_e
    move v2, v4

    goto/16 :goto_2

    :cond_f
    move v2, v4

    goto :goto_3

    :cond_10
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1    # Landroid/view/MotionEvent;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v13, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_7

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v6, 0x1

    :cond_0
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v13, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v4, 0x1

    :cond_1
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->isHitView(Landroid/view/View;FF)Z

    move-result v5

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_9

    const/4 v5, 0x1

    :cond_3
    :goto_2
    const/4 v13, 0x1

    if-ne v5, v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->isShowEmergencyArrow()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v13}, Lcom/android/keyguard/EmergencyCarrierArea;->isShowingBackupButtons()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    :cond_4
    const/4 v5, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getCurrentEffecType()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsCircleEffect:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_wallpaper"

    const/4 v15, 0x1

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsLiveWallPaper:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_6
    :goto_5
    :pswitch_0
    const/4 v13, 0x0

    :goto_6
    return v13

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    :cond_b
    const/4 v13, 0x1

    goto :goto_4

    :pswitch_1
    sget-boolean v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mMSimCarrierText:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevCarrierTextVisibility:I

    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevHelpTextVisibility:I

    :cond_c
    if-nez v6, :cond_d

    if-nez v4, :cond_d

    if-eqz v5, :cond_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v5, :cond_14

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    if-eqz v6, :cond_15

    const/4 v13, 0x0

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v4, :cond_16

    const/4 v13, 0x0

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    sget-boolean v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mMSimCarrierText:Landroid/view/View;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsCircleEffect:Z

    if-nez v13, :cond_18

    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->hideSecurityView(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v13}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->userActivity()V

    :cond_12
    if-eqz v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    if-nez v10, :cond_19

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierText:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevCarrierTextVisibility:I

    goto/16 :goto_7

    :cond_14
    const/16 v13, 0x8

    goto/16 :goto_8

    :cond_15
    const/16 v13, 0x8

    goto/16 :goto_9

    :cond_16
    const/16 v13, 0x8

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierText:Landroid/view/View;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_18
    const/16 v13, 0x8

    goto :goto_c

    :cond_19
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_1a

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_1a
    const/4 v11, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_1c

    const/4 v13, 0x1

    :goto_d
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v14, 0x7f0600ff

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v3, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_1c
    const/4 v13, 0x0

    goto :goto_d

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mKeyguardGuestSelectorView:Lcom/android/keyguard/KeyguardGuestSelectorView;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->handleVisibility(Landroid/view/View;I)V

    sget-boolean v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v13, :cond_23

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mMSimCarrierText:Landroid/view/View;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevCarrierTextVisibility:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCameraCircle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGuestCicle:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    if-eqz v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mGusetUnlockHelpText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    if-eqz v5, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->isShowEmergencyArrow()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mHelpTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevHelpTextVisibility:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v13, :cond_22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v13}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->showSecurityView()V

    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v13, :cond_6

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCarrierText:Landroid/view/View;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mPrevCarrierTextVisibility:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->shouldAdjustArrowPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setEmergencyArrowPosition()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->onScreenTurnedOff()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->onScreenTurnedOff()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    const v2, 0x7f040004

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecCameraShortcut;->onScreenTurnedOn()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecEmergencyCircleView;->onScreenTurnedOn()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCMCCFeature()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1    # Z

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mShortcutSetting:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyCircleView:Lcom/android/keyguard/sec/SecEmergencyCircleView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mIsKidsMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecCameraArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mSecEmergencyArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    return-void
.end method
