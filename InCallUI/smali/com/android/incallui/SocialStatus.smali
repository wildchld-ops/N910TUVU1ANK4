.class public Lcom/android/incallui/SocialStatus;
.super Landroid/widget/FrameLayout;
.source "SocialStatus.java"


# instance fields
.field private mBirthClosePanel:Landroid/widget/LinearLayout;

.field private mBirthCloseText:Landroid/widget/TextView;

.field private mBirthOpenPanel:Landroid/widget/LinearLayout;

.field private mBirthOpenText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHeightClose:F

.field private mHeightOpen:F

.field private mRatio:F

.field private mSnsAnimator:Landroid/widget/RelativeLayout;

.field private mSnsCloseBody:Landroid/widget/TextView;

.field private mSnsCloseContainer:Landroid/widget/RelativeLayout;

.field private mSnsCloseIcon:Landroid/widget/ImageView;

.field private mSnsClosePanel:Landroid/widget/LinearLayout;

.field private mSnsCloseToggleBtn:Landroid/widget/ImageView;

.field private mSnsOpenBody:Landroid/widget/TextView;

.field private mSnsOpenBodyScroll:Landroid/widget/ScrollView;

.field private mSnsOpenContainer:Landroid/widget/LinearLayout;

.field private mSnsOpenIcon:Landroid/widget/ImageView;

.field private mSnsOpenPanel:Landroid/widget/LinearLayout;

.field private mSnsOpenToggleBtn:Landroid/widget/ImageView;

.field private rotate:Landroid/view/animation/RotateAnimation;

.field private trans:Landroid/view/animation/TranslateAnimation;

.field private trans2:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/incallui/SocialStatus;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/incallui/SocialStatus;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/incallui/SocialStatus;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SocialStatus;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0    # Lcom/android/incallui/SocialStatus;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/SocialStatus;)Landroid/view/animation/RotateAnimation;
    .locals 1
    .param p0    # Lcom/android/incallui/SocialStatus;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SocialStatus;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/incallui/SocialStatus;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/SocialStatus;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/incallui/SocialStatus;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 4

    const/16 v2, 0x17a

    const v1, 0x7f0e0302

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v1, v2, :cond_0

    const/4 v1, -0x2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v1, "SocialStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0e0307

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenPanel:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0303

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e0308

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenIcon:Landroid/widget/ImageView;

    const v1, 0x7f0e0309

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenBodyScroll:Landroid/widget/ScrollView;

    const v1, 0x7f0e030a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenBody:Landroid/widget/TextView;

    const v1, 0x7f0e0304

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mBirthOpenPanel:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0306

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mBirthOpenText:Landroid/widget/TextView;

    const v1, 0x7f0e030b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/incallui/SocialStatus$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/SocialStatus$1;-><init>(Lcom/android/incallui/SocialStatus;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e02fa

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e02fe

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsClosePanel:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0300

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseBody:Landroid/widget/TextView;

    const v1, 0x7f0e02ff

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseIcon:Landroid/widget/ImageView;

    const v1, 0x7f0e0301

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    const v2, 0x7f020263

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseToggleBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/incallui/SocialStatus$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/SocialStatus$2;-><init>(Lcom/android/incallui/SocialStatus;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e02fb

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mBirthClosePanel:Landroid/widget/LinearLayout;

    const v1, 0x7f0e02fd

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/SocialStatus;->mBirthCloseText:Landroid/widget/TextView;

    return-void

    :cond_0
    move v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public closeSocialStatus()V
    .locals 13

    const-wide/16 v11, 0x3e8

    const/high16 v10, 0x3f000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    const v3, 0x7f020262

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v8, p0, Lcom/android/incallui/SocialStatus;->mRatio:F

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/incallui/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v5, 0x43340000

    move v4, v2

    move v6, v1

    move v7, v10

    move v8, v1

    move v9, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v3, p0, Lcom/android/incallui/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->trans2:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/incallui/SocialStatus$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/SocialStatus$4;-><init>(Lcom/android/incallui/SocialStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/incallui/SocialStatus;->init()V

    return-void
.end method

.method public openSocialStatus()V
    .locals 13

    const-wide/16 v11, 0x3e8

    const/high16 v10, 0x3f000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsOpenToggleBtn:Landroid/widget/ImageView;

    const v3, 0x7f020263

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/SocialStatus;->mHeightOpen:F

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsCloseContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/SocialStatus;->mHeightClose:F

    const/high16 v0, 0x3f800000

    iget v3, p0, Lcom/android/incallui/SocialStatus;->mHeightClose:F

    iget v4, p0, Lcom/android/incallui/SocialStatus;->mHeightOpen:F

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/incallui/SocialStatus;->mRatio:F

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/android/incallui/SocialStatus;->mRatio:F

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/incallui/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/high16 v5, 0x43340000

    move v4, v2

    move v6, v1

    move v7, v10

    move v8, v1

    move v9, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v3, p0, Lcom/android/incallui/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->mSnsAnimator:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/incallui/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/SocialStatus;->trans:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/incallui/SocialStatus$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/SocialStatus$3;-><init>(Lcom/android/incallui/SocialStatus;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
