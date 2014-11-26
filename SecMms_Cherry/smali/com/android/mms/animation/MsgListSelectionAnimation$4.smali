.class Lcom/android/mms/animation/MsgListSelectionAnimation$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MsgListSelectionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/animation/MsgListSelectionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgListSelectionAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$4;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1    # Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$4;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$100(Lcom/android/mms/animation/MsgListSelectionAnimation;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$4;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$100(Lcom/android/mms/animation/MsgListSelectionAnimation;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$4;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$4;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$100(Lcom/android/mms/animation/MsgListSelectionAnimation;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
