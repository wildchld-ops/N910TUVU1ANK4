.class public Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;
.super Landroid/widget/HorizontalScrollView;
.source "AncestorCandidateLayout.java"


# instance fields
.field private mCandidatePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateWidth:I

.field private mCandidatesCount:I

.field private mFlinged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidateWidth:I

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-gez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public holdScrollPosition()V
    .locals 6

    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-le v2, v0, :cond_0

    :cond_1
    move v3, v4

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->holdScrollPosition()V

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    return v1
.end method

.method public scrollKnobCandidateView(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method public setCandidateWidthAndCount(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidateWidth:I

    iput p2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    iget v2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidateWidth:I

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
