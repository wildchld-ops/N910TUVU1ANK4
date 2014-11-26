.class public Lcom/android/mms/animation/LayoutParamAnimator;
.super Ljava/lang/Object;
.source "LayoutParamAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final PROPERTY_HEIGHT:I = 0x2

.field public static final PROPERTY_LEFTMARGIN:I = 0x3

.field public static final PROPERTY_WIDTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/LayoutParamAnimator"


# instance fields
.field private mHasScheduled:Z

.field private mListView:Landroid/widget/ListView;

.field private mPropertyType:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mHasScheduled:Z

    iput-object p1, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mTargetView:Landroid/view/View;

    iput p2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mPropertyType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILandroid/widget/ListView;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/widget/ListView;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/animation/LayoutParamAnimator;-><init>(Landroid/view/View;I)V

    iput-object p3, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILandroid/widget/ListView;Z)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/widget/ListView;
    .param p4    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/mms/animation/LayoutParamAnimator;-><init>(Landroid/view/View;I)V

    iput-object p3, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mListView:Landroid/widget/ListView;

    iput-boolean p4, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mHasScheduled:Z

    return-void
.end method

.method public static ofHeight(Landroid/view/View;IILandroid/widget/ListView;Z)Landroid/animation/ValueAnimator;
    .locals 4
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/widget/ListView;
    .param p4    # Z

    const/4 v3, 0x2

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/LayoutParamAnimator;

    invoke-direct {v1, p0, v3, p3, p4}, Lcom/android/mms/animation/LayoutParamAnimator;-><init>(Landroid/view/View;ILandroid/widget/ListView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static ofLeftMargin(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 3
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/LayoutParamAnimator;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/mms/animation/LayoutParamAnimator;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public static ofWidth(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 4
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/mms/animation/LayoutParamAnimator;

    invoke-direct {v1, p0, v3}, Lcom/android/mms/animation/LayoutParamAnimator;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "Mms/LayoutParamAnimator"

    const-string v3, "onAnimationUpdate, null target"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mPropertyType:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mHasScheduled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/animation/LayoutParamAnimator;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
