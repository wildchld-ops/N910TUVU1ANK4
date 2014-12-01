.class public Lcom/android/mms/animation/MsgListAnimation;
.super Lcom/android/mms/animation/MsgBaseListAnimation;
.source "MsgListAnimation.java"


# static fields
.field public static final ANIMATION_SLIDE_CHECKBOX_MOVING_SIZE:F = 80.0f

.field public static final ANIMATION_SLIDE_DOWN_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_DURATION:J = 0x12cL

.field public static final ANIMATION_SLIDE_MOVING_SIZE:F = 68.0f

.field public static final ANIMATION_SLIDE_RIGHT_DURATION:J = 0x258L

.field public static final ANIMATION_SLIDE_UP_DOWN_DURATION:J = 0x190L

.field public static final ANIMATION_SLIDE_UP_DURATION:J = 0x64L


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHeightOfTitle:I

.field private mListView:Lcom/android/mms/ui/MsgSweepActionListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/animation/MsgBaseListAnimation;-><init>()V

    const-string v0, "Mms/MsgConversationListAnimation"

    iput-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mHeightOfTitle:I

    return-void
.end method

.method private createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;
    .locals 6

    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/4 v4, 0x0

    const/high16 v5, 0x42880000

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$4;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private createDateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6

    const-wide/16 v1, 0x258

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d780000

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$3;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$3;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private createStatusAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x258

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d780000

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$1;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object v0
.end method

.method private createUnreadCountAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x12c

    new-instance v3, Lcom/android/mms/animation/easing/SineInOut50;

    invoke-direct {v3}, Lcom/android/mms/animation/easing/SineInOut50;-><init>()V

    const/high16 v4, -0x3d780000

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/animation/MsgObjectAnimation;->createSlideX(JLandroid/view/animation/Interpolator;FF)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/MsgListAnimation$2;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/animation/MsgListAnimation$2;-><init>(Lcom/android/mms/animation/MsgListAnimation;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object v0
.end method

.method private hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 7

    const/16 v6, 0x8

    invoke-direct {p0, p5, p6}, Lcom/android/mms/animation/MsgListAnimation;->createCheckBoxAnimation(Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/mms/animation/MsgListAnimation;->createDateAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/mms/animation/MsgListAnimation;->createStatusAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {p0, p4}, Lcom/android/mms/animation/MsgListAnimation;->createUnreadCountAnimation(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    if-nez p7, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-gez v4, :cond_2

    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_0

    if-nez p7, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-gez v4, :cond_3

    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_1

    if-nez p7, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-gez v4, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method


# virtual methods
.method public hidecheckbox()V
    .locals 14

    const v13, 0x7f0b0094

    iget-boolean v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    if-eqz v0, :cond_1

    const-string v0, "TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hidecheckbox: isAnimating Now = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/mms/animation/MsgListAnimation;->mIsAnimating:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v8

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getLastVisiblePosition()I

    move-result v10

    sub-int v0, v10, v8

    add-int/lit8 v11, v0, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    sub-int v12, v10, v8

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    add-int/lit8 v11, v11, -0x1

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    const-string v12, "hideCheckbox lastItem is footer"

    invoke-static {v0, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v11, :cond_0

    add-int/lit8 v0, v11, -0x1

    if-ne v7, v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->TAG:Ljava/lang/String;

    const-string v12, "isLastIndex = TRUE!"

    invoke-static {v0, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0b0150

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0b014f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/animation/MsgListAnimation;->hideCheckBoxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/android/mms/ui/MsgSweepActionListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/mms/animation/MsgListAnimation;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/android/mms/animation/MsgListAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    return-void
.end method
