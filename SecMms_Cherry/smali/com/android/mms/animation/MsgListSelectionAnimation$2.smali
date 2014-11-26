.class Lcom/android/mms/animation/MsgListSelectionAnimation$2;
.super Ljava/lang/Object;
.source "MsgListSelectionAnimation.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

    iput-object p1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$000(Lcom/android/mms/animation/MsgListSelectionAnimation;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mPreDrawListener : onPreDraw()"

    invoke-static {v12, v13}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$100(Lcom/android/mms/animation/MsgListSelectionAnimation;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/MsgSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$100(Lcom/android/mms/animation/MsgListSelectionAnimation;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return v11

    :cond_1
    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # invokes: Lcom/android/mms/animation/MsgListSelectionAnimation;->getChbTransX()I
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$200(Lcom/android/mms/animation/MsgListSelectionAnimation;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v1, v3

    :goto_0
    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v2, v11

    :goto_1
    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v6, v3

    :goto_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_0

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$100(Lcom/android/mms/animation/MsgListSelectionAnimation;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v12, 0x7f0b0094

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v12, 0x7f0b0049

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v12, 0x7f0b004a

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v12, 0x7f0b006e

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    iget-object v13, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x3f800000

    :goto_4
    # invokes: Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareCheckBoxAnimate(Landroid/view/View;IIF)V
    invoke-static {v13, v0, v1, v2, v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$400(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;IIF)V

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # invokes: Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideInAnimate(Landroid/view/View;II)V
    invoke-static {v12, v8, v6, v11}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$500(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;II)V

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # invokes: Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideInAnimate(Landroid/view/View;II)V
    invoke-static {v12, v9, v6, v11}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$500(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;II)V

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # invokes: Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideInAnimate(Landroid/view/View;II)V
    invoke-static {v12, v10, v6, v11}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$500(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;II)V

    :cond_2
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    neg-int v1, v3

    goto :goto_0

    :cond_4
    move v2, v11

    goto :goto_1

    :cond_5
    neg-int v6, v3

    goto :goto_2

    :cond_6
    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_7

    neg-int v1, v3

    :goto_6
    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_8

    move v2, v11

    :goto_7
    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # getter for: Lcom/android/mms/animation/MsgListSelectionAnimation;->mIsShowMode:Z
    invoke-static {v12}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$300(Lcom/android/mms/animation/MsgListSelectionAnimation;)Z

    move-result v12

    if-eqz v12, :cond_9

    neg-int v6, v3

    :goto_8
    goto :goto_2

    :cond_7
    move v1, v11

    goto :goto_6

    :cond_8
    neg-int v2, v3

    goto :goto_7

    :cond_9
    move v6, v3

    goto :goto_8

    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v9, v6, v12, v11, v13}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v10, v6, v12, v11, v13}, Landroid/view/View;->setPadding(IIII)V

    :goto_9
    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # invokes: Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideOutAnimate(Landroid/view/View;II)V
    invoke-static {v12, v9, v6, v11}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$600(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;II)V

    iget-object v12, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$2;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    # invokes: Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideOutAnimate(Landroid/view/View;II)V
    invoke-static {v12, v10, v6, v11}, Lcom/android/mms/animation/MsgListSelectionAnimation;->access$600(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;II)V

    goto :goto_5

    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v9, v11, v12, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v10, v11, v12, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9
.end method
