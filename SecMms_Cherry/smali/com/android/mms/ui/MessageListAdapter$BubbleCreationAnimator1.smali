.class Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BubbleCreationAnimator1"
.end annotation


# instance fields
.field mItem:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;->mItem:Lcom/android/mms/ui/MessageListItem;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 10

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;->mItem:Lcom/android/mms/ui/MessageListItem;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v8, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-static {v0, v1, v2}, Lcom/android/mms/animation/MsgObjectAnimation;->createFadeIn(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v7

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleAtRightBottom(JLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/ScaleAnimation;

    move-result-object v9

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;->mItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$BubbleCreationAnimator1;->mItem:Lcom/android/mms/ui/MessageListItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
