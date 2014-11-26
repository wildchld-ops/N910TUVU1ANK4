.class Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->hideCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 13

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/View;->setEnabled(Z)V

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return v12

    :cond_1
    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    # invokes: Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->getChbTransX()I
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->access$3700(Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_2

    neg-int v1, v3

    const/4 v2, 0x0

    neg-int v5, v3

    const/4 v8, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b039d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0b0365

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    int-to-float v9, v5

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    int-to-float v10, v8

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v10, v10, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;
    invoke-static {v10}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v10, v10, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->CHECKBOX_FLOATING_DEFAULT_DURATION:I
    invoke-static {v10}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3500(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    int-to-float v9, v5

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    int-to-float v10, v8

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v10, v10, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->CHECKBOX_FLOATING_DEFAULT_DURATION:I
    invoke-static {v10}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3500(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v10, v10, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;
    invoke-static {v10}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3$1;

    invoke-direct {v10, p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$3;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x0

    neg-int v2, v3

    move v5, v3

    const/4 v8, 0x0

    goto/16 :goto_0
.end method
