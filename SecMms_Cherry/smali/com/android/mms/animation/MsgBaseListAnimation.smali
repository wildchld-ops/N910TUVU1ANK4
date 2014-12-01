.class public abstract Lcom/android/mms/animation/MsgBaseListAnimation;
.super Ljava/lang/Object;
.source "MsgBaseListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;
    }
.end annotation


# static fields
.field public static mAleadyShowAnimation:Z


# instance fields
.field protected mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeightOfTitle:I

.field protected mHideSelectAllAnim:Landroid/view/animation/Animation;

.field protected mIsAnimating:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

.field protected mSelectAllLayout:Landroid/widget/LinearLayout;

.field protected mShowSelectAllAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    iput-boolean v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mIsAnimating:Z

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    iput v1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    return-void
.end method


# virtual methods
.method public getTitleHeight()I
    .locals 1

    iget v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    return v0
.end method

.method public abstract hidecheckbox()V
.end method

.method public resetAnimationFlag()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    return-void
.end method

.method public setDeleteModeLayout(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation;->setShowDeleteModeAnim(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    :cond_1
    return-void
.end method

.method protected setHideDeleteModeAnim(Landroid/view/animation/Animation;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/animation/MsgBaseListAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgBaseListAnimation$2;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setLayout(Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method protected setListItemSlideEffectDone()V
    .locals 1

    sget-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    :cond_0
    return-void
.end method

.method public setNormalModeLayout(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation;->setHideDeleteModeAnim(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHideSelectAllAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgBaseListAnimation;->resetAnimationFlag()V

    return-void
.end method

.method public setOnDeleteAnimation(Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mOnDelAnimListener:Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;

    return-void
.end method

.method protected setShowDeleteModeAnim(Landroid/view/animation/Animation;)V
    .locals 2

    iput-object p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mShowSelectAllAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/animation/MsgBaseListAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgBaseListAnimation$1;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setTitleHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/animation/MsgBaseListAnimation;->mHeightOfTitle:I

    return-void
.end method

.method public showCheckBoxAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 1

    sget-boolean v0, Lcom/android/mms/animation/MsgBaseListAnimation;->mAleadyShowAnimation:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/animation/MsgBaseListAnimation$3;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/animation/MsgBaseListAnimation$3;-><init>(Lcom/android/mms/animation/MsgBaseListAnimation;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
