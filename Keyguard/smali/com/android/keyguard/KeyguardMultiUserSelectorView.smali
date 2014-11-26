.class public Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mIsListClosed:Z


# instance fields
.field private mActiveUser:Landroid/content/pm/UserInfo;

.field private mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field private mActiveUserAvatarSubstituted:Z

.field private mArrowBtn:Landroid/widget/ImageButton;

.field private mArrowBtnTopMargin:I

.field private mArrowButtonListener:Landroid/view/View$OnClickListener;

.field private mAvatarLeftMargin:I

.field private mAvatarWidth:I

.field private mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPM:Landroid/os/PowerManager;

.field private mUserAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mUsersGrid:Landroid/view/ViewGroup;

.field private mViewAnimationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatarSubstituted:Z

    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtnTopMargin:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUserAnimationInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$5;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$6;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p1    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataMultiUser()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->clickArrowButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardMultiUserSelectorView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardMultiUserSelectorView;ZI)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p1    # Z
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->startMoveAnimation(ZI)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addArrowButton(Z)V
    .locals 5
    .param p1    # Z

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0200a5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtnTopMargin:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private clickArrowButton()V
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    sget-boolean v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-nez v1, :cond_1

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 5
    .param p1    # Landroid/content/pm/UserInfo;

    const/4 v4, 0x0

    const v2, 0x7f03001d

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/Space;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private createAnimation(Landroid/view/View;ZIILandroid/content/pm/UserInfo;)V
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Z
    .param p3    # I
    .param p4    # I
    .param p5    # Landroid/content/pm/UserInfo;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_0

    iget v5, p5, Landroid/content/pm/UserInfo;->id:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v6, :cond_0

    const-string v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000

    aput v8, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    sub-int v5, p3, p4

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    add-int/2addr v6, v7

    mul-int v2, v5, v6

    :goto_1
    const-string v5, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    int-to-float v8, v2

    aput v8, v6, v7

    const/4 v7, 0x1

    int-to-float v8, v3

    aput v8, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUserAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    :cond_2
    sub-int v5, p3, p4

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarWidth:I

    add-int/2addr v6, v7

    mul-int v3, v5, v6

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mAvatarLeftMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtnTopMargin:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->initMobileData()V

    goto :goto_0
.end method

.method private initMobileData()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataOwnerState()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataMultiUser()V

    goto :goto_0
.end method

.method public static resetListVariable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    return-void
.end method

.method private setAllClickable(Z)V
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setMobileDataMultiUser()V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "KeyguardMultiUserSelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMobileDataMultiUser userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_dependent_mobile_settings"

    invoke-static {v5, v6, v4, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_2

    move v2, v4

    :goto_2
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method private setMobileDataOwnerState()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_dependent_mobile_settings"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_dependent_mobile_settings"

    invoke-static {v2, v3, v5, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private startMoveAnimation(ZI)V
    .locals 9
    .param p1    # Z
    .param p2    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAnimation(Landroid/view/View;ZIILandroid/content/pm/UserInfo;)V

    move v4, v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mViewAnimationHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$7;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addUsers(Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-nez v11, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataOwnerState()V

    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "2.0"

    const-string v12, "version"

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v12, "user"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v11}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Landroid/os/PersonaManager;->getParentUserForCurrentPersona()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    invoke-static {v8, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v11

    if-nez v11, :cond_3

    sget-boolean v11, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    invoke-direct {p0, v11}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addArrowButton(Z)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_2

    sget-boolean v11, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_2

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v12, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v12, :cond_2

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_2

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v12, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v12, :cond_2

    iput-object v9, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v12, 0x64

    if-ge v11, v12, :cond_4

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;

    move-result-object v9

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    if-eqz v11, :cond_5

    iget v11, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v12, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUser:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v12, :cond_5

    iput-object v9, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v12, v13}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    :cond_7
    return-void
.end method

.method finalizeActiveUserNow(Z)V
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    sget-boolean v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mIsListClosed:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public finalizeActiveUserView(Z)V
    .locals 4
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserNow(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v1, p1, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->showUnlockHint()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->clickArrowButton()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->hideSecurityView(I)V

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->lockPressed(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setMobileDataOwnerState()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mPM:Landroid/os/PowerManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    new-instance v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView$4;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView$4;-><init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;Lcom/android/keyguard/KeyguardMultiUserAvatar;)V

    invoke-virtual {v1, v4, v5, v2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mArrowButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;->userActivity()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;

    return-void
.end method
