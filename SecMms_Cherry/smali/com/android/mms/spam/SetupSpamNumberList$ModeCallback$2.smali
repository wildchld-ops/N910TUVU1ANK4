.class Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;
.super Ljava/lang/Object;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->showCheckBox()V
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

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    const/4 v13, 0x0

    const v12, 0x7f0b039d

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v8, v8, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v8, v8, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/View;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v8, v8, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v11

    :cond_1
    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v8, v8, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    const/4 v7, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v8, v8, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v8, v8, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/mms/spam/SetupSpamNumberList;->access$600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b0365

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    int-to-float v8, v3

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->CHECKBOX_FLOATING_DEFAULT_DURATION:I
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3500(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    int-to-float v8, v3

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->CHECKBOX_FLOATING_DEFAULT_DURATION:I
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3500(Lcom/android/mms/spam/SetupSpamNumberList;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;->this$1:Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;

    iget-object v9, v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;
    invoke-static {v9}, Lcom/android/mms/spam/SetupSpamNumberList;->access$3600(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v8, v2, -0x1

    if-ne v4, v8, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2$1;

    invoke-direct {v9, p0}, Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList$ModeCallback$2;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    neg-int v3, v1

    const/4 v7, 0x0

    goto/16 :goto_0
.end method
