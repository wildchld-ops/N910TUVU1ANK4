.class public Lcom/android/launcher2/PageIndicator$Page;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field protected mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mDrawState:I

.field private mIsDraggedOn:Z

.field private mPrevDrawState:I

.field final synthetic this$0:Lcom/android/launcher2/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PageIndicator;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/android/launcher2/PagedView;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # F
    .param p7    # F
    .param p8    # [Z

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mGrowBy:F
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$100(Lcom/android/launcher2/PageIndicator;)F

    move-result v4

    mul-float v4, v4, p7

    float-to-int v2, v4

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mIsHiding:Z
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$300(Lcom/android/launcher2/PageIndicator;)Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v0, p7

    :goto_0
    mul-float/2addr v0, p6

    if-lez v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v4

    const/16 v5, 0x258

    if-lt v4, v5, :cond_4

    const/4 v4, 0x0

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    if-nez v1, :cond_0

    const/4 v4, 0x1

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_2
    iget v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    const/4 v4, 0x1

    :goto_3
    return v4

    :cond_1
    const/high16 v4, 0x3f000000

    mul-float v4, v4, p7

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000

    sub-float/2addr v5, v3

    mul-float v0, v4, v5

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/PageIndicator$Page;->isFolderPage(Lcom/android/launcher2/PagedView;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    const/4 v6, -0x3

    add-int v7, p4, v2

    add-int/lit8 v8, p5, -0x3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x4

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    const/4 v6, 0x0

    add-int v7, p4, v2

    invoke-virtual {v4, v5, v6, v7, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x0

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x5

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    const/4 v6, 0x0

    add-int v7, p4, v2

    invoke-virtual {v4, v5, v6, v7, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x2

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x3

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/PageIndicator$Page;->isFolderPage(Lcom/android/launcher2/PagedView;I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x4

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x5

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x0

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_f
    const/4 v4, 0x2

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_10
    const/4 v4, 0x3

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/PageIndicator$Page;->isFolderPage(Lcom/android/launcher2/PagedView;I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_12
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method endAnimation()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    return-void
.end method

.method public getScale()F
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v0

    return v0
.end method

.method public getScale(J)F
    .locals 8
    .param p1    # J

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/high16 v6, 0x3f800000

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput-wide p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    iput v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    :cond_0
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v2, v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v3, v3

    div-float v0, v2, v3

    cmpl-float v2, v0, v6

    if-ltz v2, :cond_1

    iput v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    :cond_1
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v2, v7, :cond_2

    # getter for: Lcom/android/launcher2/PageIndicator;->rate:[F
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v1, v2, v3

    goto :goto_0
.end method

.method initDrawState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    return-void
.end method

.method public isDraggedOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    return v0
.end method

.method isFolderPage(Lcom/android/launcher2/PagedView;I)Z
    .locals 1
    .param p1    # Lcom/android/launcher2/PagedView;
    .param p2    # I

    const/4 v0, 0x0

    return v0
.end method

.method public setDraggedOn(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    return-void
.end method

.method setDrawState(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    return-void
.end method

.method setDrawState(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    iput p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    # getter for: Lcom/android/launcher2/PageIndicator;->rate:[F
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    # getter for: Lcom/android/launcher2/PageIndicator;->rate:[F
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    :cond_0
    return-void
.end method
